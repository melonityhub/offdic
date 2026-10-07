#!/usr/bin/env python3
"""Host-side checks of actual Kotlin SQL literals, resource links and original label mappings.
Does not compile Kotlin or replace on-device instrumentation tests.
"""
import json
from pathlib import Path
import re
import sqlite3
import unittest
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
KOTLIN = ROOT / 'app/src/main/java/org/offdic'

class ContractTest(unittest.TestCase):
    def setUp(self):
        self.db = sqlite3.connect(f'file:{ROOT / "dbsample/sample.sqlite"}?mode=ro', uri=True)
    def tearDown(self): self.db.close()

    def test_sample_integrity(self):
        self.assertEqual(self.db.execute('PRAGMA quick_check').fetchone()[0], 'ok')
        # Declared foreign keys are intact, but many sampled words have no sampled details.
        self.assertEqual(self.db.execute("PRAGMA foreign_key_check").fetchall(), [])
        self.assertEqual(self.db.execute("SELECT COUNT(*) FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'").fetchone()[0], 18)

    def sql_literals(self):
        source = (KOTLIN / 'Dictionary.kt').read_text()
        for literal in re.findall(r'"(?:[^"\\]|\\.)*"', source):
            if literal.startswith('"SELECT '):
                yield json.loads(literal)

    def expand(self, sql, language):
        return sql.replace('${p}', language).replace('${word.language.prefix}', language)

    def test_actual_queries_compile_against_sample(self):
        count = 0
        for literal in self.sql_literals():
            if '$table' in literal: continue  # Dynamic schema check is covered by instrumentation.
            for language in ('english', 'persian'):
                for accent in ('american', 'british'):
                    sql = self.expand(literal, language).replace('${accent}', accent)
                    self.assertNotIn('$', sql)
                    params = ['0'] * sql.count('?')
                    self.db.execute('EXPLAIN ' + sql, params).fetchall()
                    count += 1
        self.assertGreaterEqual(count, 50)

    def test_search_escaping_and_paging(self):
        literal = next(s for s in self.sql_literals() if ' ESCAPE ' in s)
        for language in ('english', 'persian'):
            sql = self.expand(literal, language)
            for term in ("' OR 1=1 --", '%', '_', '\\'):
                escaped = term.replace('\\', '\\\\').replace('%', '\\%').replace('_', '\\_')
                result = self.db.execute(sql, (escaped+'%', term, 0)).fetchall()
                self.assertTrue(all(text.casefold().startswith(term.casefold()) for _,text in result))
            first = self.db.execute(sql, ('%', '', 0)).fetchall()
            second = self.db.execute(sql, ('%', '', 60)).fetchall()
            self.assertTrue(first)
            self.assertFalse(set(first) & set(second))
            term = first[0][1]
            escaped = term.replace('\\', '\\\\').replace('%', '\\%').replace('_', '\\_')
            self.assertEqual(self.db.execute(sql, (escaped+'%', term, 0)).fetchone()[1], term)

    def test_pos_labels_match_original(self):
        fixture = json.loads((ROOT / 'tests/fixtures/pos_labels.json').read_text())
        port = (KOTLIN / 'PartOfSpeech.kt').read_text()
        for method, count in [('getEnglish', 34), ('getPersian', 31), ('findEnglishEquivalentInPersian', 34)]:
            pairs = fixture[method]
            self.assertEqual(len(pairs), count)
            kotlin = port.split('fun '+method+'(')[1].split('\n    }')[0]
            actual = {code: json.loads(value) for code, value in re.findall(r'(\d+) -> ("(?:[^"\\]|\\.)*")', kotlin)}
            self.assertEqual(actual, pairs)

    def test_new_app_excludes_original_sdks(self):
        manifest = ET.parse(ROOT / 'app/src/main/AndroidManifest.xml')
        permissions = {e.get('{http://schemas.android.com/apk/res/android}name') for e in manifest.getroot().findall('uses-permission')}
        self.assertEqual(permissions, {'android.permission.INTERNET', 'android.permission.ACCESS_NETWORK_STATE'})
        production = '\n'.join(p.read_text() for p in KOTLIN.glob('*.kt'))
        for sdk in ('com.appodeal', 'com.android.billingclient', 'com.facebook.ads', 'com.google.android.gms.ads', 'net.zetetic', 'fast.dic.dict'):
            self.assertNotIn(sdk, production)
        self.assertNotIn('sourcecode', (ROOT / 'app/build.gradle.kts').read_text())

    def test_xml_and_color_references(self):
        resources = ROOT / 'app/src/main/res'
        colors = {e.get('name') for e in ET.parse(resources / 'values/colors.xml').getroot()}
        for p in resources.rglob('*.xml'):
            ET.parse(p)
            for name in re.findall(r'@color/(\w+)', p.read_text()): self.assertIn(name, colors)

    def test_daily_word_is_stable_and_has_meaning(self):
        literals = list(self.sql_literals())
        count_sql = next(s for s in literals if s.startswith('SELECT COUNT(*)'))
        daily_sql = next(s for s in literals if 'ORDER BY w.english_word_id LIMIT 1' in s)
        count = self.db.execute(count_sql).fetchone()[0]
        self.assertGreater(count, 0)
        for day in (0, 1, 20732, -1):
            selected = self.db.execute(daily_sql, (day % count,)).fetchone()
            self.assertEqual(selected, self.db.execute(daily_sql, (day % count,)).fetchone())
            self.assertTrue(self.db.execute('SELECT 1 FROM english_details WHERE english_word_id=?', (selected[0],)).fetchone())

    def test_resource_dependency_closure(self):
        resources = ROOT / 'app/src/main/res'
        names = {}
        for p in resources.rglob('*'):
            if p.is_file(): names.setdefault(p.parent.name.split('-')[0], set()).add(p.stem)
        for p in resources.rglob('*.xml'):
            for kind, name in re.findall(r'@(drawable|font|layout|xml)/([a-zA-Z0-9_]+)', p.read_text()):
                self.assertIn(name, names.get(kind, set()), str(p))
        css = (ROOT / 'app/src/main/assets/css/style-results.css').read_text()
        self.assertNotIn('file://', css)
        for asset in re.findall(r'https://appassets.androidplatform.net/assets/([^\s)"\']+)', css):
            self.assertTrue((ROOT / 'app/src/main/assets' / asset).is_file(), asset)

    def test_custom_theme_attributes_are_defined(self):
        resources = ROOT / 'app/src/main/res'
        attributes = {e.get('name') for p in resources.glob('values*/*.xml') for e in ET.parse(p).getroot().iter('attr')}
        theme_items = {e.get('name') for p in resources.glob('values*/styles.xml') for e in ET.parse(p).getroot().iter('item')}
        for path in resources.rglob('*.xml'):
            for name in re.findall(r'\?(?:attr/)?([A-Za-z_][A-Za-z_0-9]*)(?![A-Za-z_0-9:])', path.read_text()):
                if name == 'xml': continue
                self.assertIn(name, attributes, str(path))
                self.assertIn(name, theme_items, str(path))

    def test_camera_and_widget_manifest_contract(self):
        android = '{http://schemas.android.com/apk/res/android}'
        app = ET.parse(ROOT / 'app/src/main/AndroidManifest.xml').getroot().find('application')
        self.assertEqual(app.get(android + 'usesCleartextTraffic'), 'false')
        provider = app.find('provider')
        self.assertEqual(provider.get(android+'exported'), 'false')
        self.assertEqual(provider.get(android+'grantUriPermissions'), 'true')
        paths = ET.parse(ROOT / 'app/src/main/res/xml/camera_paths.xml').getroot()
        self.assertEqual([(x.tag, x.get('path')) for x in paths], [('cache-path', 'camera/')])
        self.assertIsNotNone(app.find('receiver/meta-data'))
        web = (KOTLIN / 'ResultWebView.kt').read_text()
        for safeguard in ('javaScriptEnabled = false', 'allowFileAccess = false', 'blockNetworkLoads = true', 'allowContentAccess = false'):
            self.assertIn(safeguard, web)

if __name__ == '__main__': unittest.main(verbosity=2)
