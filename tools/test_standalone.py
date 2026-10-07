#!/usr/bin/env python3
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
import zipfile

ROOT = Path(__file__).resolve().parents[1]

class StandaloneTest(unittest.TestCase):
    def test_export_is_clean_reproducible_and_tests_run_without_original(self):
        with tempfile.TemporaryDirectory() as directory:
            folder = Path(directory)
            for name in ('one.zip', 'two.zip'):
                subprocess.run([sys.executable, str(ROOT/'tools/export_standalone.py'), '--output', str(folder/name)], check=True)
            self.assertEqual((folder/'one.zip').read_bytes(), (folder/'two.zip').read_bytes())
            with zipfile.ZipFile(folder/'one.zip') as archive:
                names = [n.removeprefix('offdic-standalone/') for n in archive.namelist()]
                for name in names:
                    self.assertNotIn(name.split('/')[0], {'.git', 'sourcecode', 'dict', 'res', 'assets'})
                    self.assertNotIn('fastdic_plain.sqlite', name)
                    self.assertNotIn('local.properties', name)
                self.assertIn('gradle/wrapper/gradle-wrapper.jar', names)
                self.assertIn('dbsample/sample.sqlite', names)
                archive.extractall(folder)
            exported = folder/'offdic-standalone'
            for name, expected in json.loads((exported/'SOURCE_MANIFEST.json').read_text()).items():
                self.assertEqual(hashlib.sha256((exported/name).read_bytes()).hexdigest(), expected)
            for test in ('test_contract.py', 'test_gateway.py'):
                subprocess.run([sys.executable, str(exported/'tools'/test)], cwd=exported, check=True)
            # The exported project can create another clean export without a Git repository.
            subprocess.run([sys.executable, str(exported/'tools/export_standalone.py'), '--output', str(folder/'three.zip')], cwd=exported, check=True)
            self.assertEqual((folder/'one.zip').read_bytes(), (folder/'three.zip').read_bytes())

if __name__ == '__main__': unittest.main(verbosity=2)
