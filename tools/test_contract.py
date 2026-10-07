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

    # Templates the Kotlin sources interpolate into SQL literals. Anything unknown must fail
    # loudly instead of being EXPLAINed with a stray '$' left in the statement.
    TEMPLATES = {
        'p': lambda language, accent: language,
        'word.language.prefix': lambda language, accent: language,
        'meaning': lambda language, accent: 'persian_meaning' if language == 'english' else 'english_meaning',
        'accent': lambda language, accent: accent,
        'marks': lambda language, accent: '?,?,?',
    }

    def expand(self, sql, language, accent='american'):
        for name in sorted(self.TEMPLATES, key=len, reverse=True):
            value = self.TEMPLATES[name](language, accent)
            sql = sql.replace('${' + name + '}', value).replace('$' + name, value)
        return sql

    def test_actual_queries_compile_against_sample(self):
        count = 0
        for literal in self.sql_literals():
            if '$table' in literal: continue  # Dynamic schema check is covered by instrumentation.
            for language in ('english', 'persian'):
                for accent in ('american', 'british'):
                    sql = self.expand(literal, language, accent)
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
                self.assertTrue(all(row[1].casefold().startswith(term.casefold()) for row in result))
            first = self.db.execute(sql, ('%', '', 0)).fetchall()
            second = self.db.execute(sql, ('%', '', 60)).fetchall()
            self.assertTrue(first)
            self.assertFalse({row[0] for row in first} & {row[0] for row in second})
            term = first[0][1]
            escaped = term.replace('\\', '\\\\').replace('%', '\\%').replace('_', '\\_')
            self.assertEqual(self.db.execute(sql, (escaped+'%', term, 0)).fetchone()[1], term)
            # Every suggestion row carries the translation preview the UI renders.
            self.assertEqual(len(first[0]), 3)
            self.assertTrue([row[2] for row in first if row[2]])

    def test_search_preview_matches_original_first_detail(self):
        literal = next(s for s in self.sql_literals() if ' ESCAPE ' in s)
        self.assertIn('d.persian_meaning', self.expand(literal, 'english'))
        self.assertIn('d.english_meaning', self.expand(literal, 'persian'))
        for language, word in (('english', 'a'), ('persian', 'آب')):
            sql = self.expand(literal, language)
            row = self.db.execute(sql, (word+'%', word, 0)).fetchone()
            detail = self.db.execute(
                f'SELECT {"persian_meaning" if language == "english" else "english_meaning"} '
                f'FROM {language}_details d WHERE d.{language}_word_id=? ORDER BY d.position, d.{language}_detail_id LIMIT 1',
                (row[0],)).fetchone()
            self.assertEqual(row[1], word)
            self.assertEqual(row[2], detail[0])
            self.assertTrue(row[2])

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

    def test_result_page_is_self_contained(self):
        """Regression guard for "webpage not available" / net::ERR_HTTP_RESPONSE_CODE_FAILURE.

        The document is a data URL with a null base URL, exactly like the original
        WordResultFragment, and everything it renders is inlined. The client must never answer a
        request with a fabricated HTTP error response: that is what killed the document
        navigation before and replaced the word page with WebView's error screen.
        """
        web = (KOTLIN / 'ResultWebView.kt').read_text()
        self.assertIn('loadDataWithBaseURL(null,', web)
        self.assertIn('assets.shouldInterceptRequest(request.url)', web)
        self.assertNotIn('403', web)
        self.assertNotIn('ByteArrayInputStream', web)
        self.assertNotIn('WebResourceResponse("', web)
        self.assertIn('onReceivedError', web)
        self.assertIn('onReceivedHttpError', web)
        html = (KOTLIN / 'ResultHtml.kt').read_text()
        self.assertNotIn('<link', html)
        self.assertNotIn('loadUrl(', html)
        self.assertIn('Content-Security-Policy', html)
        # Nothing external is referenced any more, so the policy must not keep the dead
        # appassets virtual host: the device test asserts the rendered document too.
        self.assertNotIn('appassets', html)
        self.assertIn("style-src 'unsafe-inline'; font-src data:; img-src data:;", html)
        self.assertIn("data-theme='", html)
        assets = (KOTLIN / 'ResultAssets.kt').read_text()
        self.assertIn('Base64.encodeToString', assets)
        self.assertIn('"data:${mime(path)};base64,"', assets)

    def test_release_pipeline_builds_and_publishes_split_apks(self):
        """GitHub Actions is the only builder for the app, so the release contract stays explicit.

        Every push to main cuts a release: version 1.0.<run number>, one APK per ABI plus a
        universal one, checksums, the standalone source ZIP, and the arm64 APK on the shuttle
        branch that the Drive mirror reads. A local build must keep working without any of it.
        """
        release = (ROOT / '.github/workflows/release.yml').read_text()
        self.assertIn('branches: [main]', release)
        self.assertIn('contents: write', release)
        self.assertIn('workflow_dispatch', release)
        self.assertIn('assembleRelease', release)
        for flag in ('-PappVersionName=', '-PappVersionCode=', '-PabiSplits=true'):
            self.assertIn(flag, release)
        for abi in ('arm64-v8a', 'armeabi-v7a', 'x86_64', 'universal'):
            self.assertIn(abi, release)
        self.assertIn('sha256sum', release)
        self.assertIn('gh release create', release)
        self.assertIn('--generate-notes', release)
        self.assertIn('export_standalone.py', release)
        self.assertIn('drive-artifacts', release)
        self.assertIn('offdic-${version}-arm64-v8a.apk', release)
        # The shuttle branch must not trigger the checks workflow, and the checks workflow must
        # never try to publish anything.
        checks = (ROOT / '.github/workflows/android.yml').read_text()
        self.assertIn('branches-ignore: [drive-artifacts]', checks)
        self.assertNotIn('gh release create', checks)
        # The pull-request build compiles the very variant the release workflow packages.
        self.assertIn(':app:assembleRelease -PappVersionName=ci -PappVersionCode=1 -PabiSplits=true', checks)
        gradle = (ROOT / 'app/build.gradle.kts').read_text()
        self.assertIn('providers.gradleProperty("appVersionName")', gradle)
        self.assertIn('providers.gradleProperty("appVersionCode")', gradle)
        self.assertIn('providers.gradleProperty("abiSplits")', gradle)
        self.assertIn('isUniversalApk = true', gradle)
        self.assertIn('signingConfigs.getByName("debug")', gradle)
        self.assertIn('OFFDIC_KEYSTORE_FILE', gradle)
        # The exported standalone project must come with the release pipeline documentation.
        exporter = (ROOT / 'tools/export_standalone.py').read_text()
        self.assertIn("'.github/workflows/release.yml'", exporter)
        self.assertIn("'docs/RELEASE_FA.md'", exporter)
        self.assertTrue((ROOT / 'docs/RELEASE_FA.md').is_file())

    def test_word_page_falls_back_and_shows_previews(self):
        activity = (KOTLIN / 'MainActivity.kt').read_text()
        # A WebView failure must never hide the translation.
        self.assertIn('ResultWebView.State.FAILED', activity)
        self.assertIn('nativeEntry(holder, entry)', activity)
        self.assertIn('fun nativeEntry(', activity)
        # Suggestion rows show the translation preview, not only the echoed query.
        self.assertIn('fun wordRow(', activity)
        for call in ('wordRow(word) { openWord(word) }', 'previews[word].orEmpty()'):
            self.assertIn(call, activity)
        dictionary = (KOTLIN / 'Dictionary.kt').read_text()
        self.assertIn('fun previews(words: List<Word>): Map<Word, String>', dictionary)
        self.assertIn('if (hasPreview) c.getString(2).orEmpty() else ""', dictionary)

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
