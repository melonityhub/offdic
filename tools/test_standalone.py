#!/usr/bin/env python3
"""Host-side check that the standalone export is complete and internally consistent.

Runs tools/export_standalone.py into a temporary archive and verifies the packaged file set
(manifest hashes match the bytes, every build input is present, and no machine-local secret is
bundled). Standard library only.
"""
import hashlib
import importlib.util
import json
import tempfile
import unittest
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("export_standalone", ROOT / "tools" / "export_standalone.py")
export = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(export)

PREFIX = "offdic-standalone/"
REQUIRED = [
    "settings.gradle.kts",
    "build.gradle.kts",
    "gradle.properties",
    "gradlew",
    "app/build.gradle.kts",
    "app/src/main/AndroidManifest.xml",
    "app/src/main/java/org/offdic/MainActivity.kt",
    "app/src/main/java/org/offdic/Dictionary.kt",
    "app/src/main/java/org/offdic/PartOfSpeech.kt",
    "app/src/main/java/org/offdic/UserStore.kt",
    "app/src/main/res/values/colors.xml",
    "app/src/main/assets/css/style-results.css",
    "gateway/server.py",
    "tools/test_contract.py",
    "tools/test_gateway.py",
    "dbsample/sample.sqlite",
    "README.md",
]


class StandaloneExportTest(unittest.TestCase):
    def test_export_is_complete_and_consistent(self):
        with tempfile.TemporaryDirectory() as tmp:
            archive = Path(tmp) / "offdic-standalone.zip"
            export.export(archive)
            self.assertTrue(archive.is_file())
            with zipfile.ZipFile(archive) as bundle:
                names = set(bundle.namelist())
                self.assertIn(PREFIX + "SOURCE_MANIFEST.json", names)
                for required in REQUIRED:
                    self.assertIn(PREFIX + required, names, required)
                manifest = json.loads(bundle.read(PREFIX + "SOURCE_MANIFEST.json"))
                for name, digest in manifest.items():
                    self.assertEqual(
                        hashlib.sha256(bundle.read(PREFIX + name)).hexdigest(),
                        digest,
                        name,
                    )
                # Machine-local configuration must never be packaged.
                self.assertNotIn(PREFIX + "local.properties", names)
                # The standalone README is the exported project's README.md.
                self.assertTrue((PREFIX + "README.md") in names)


if __name__ == "__main__":
    unittest.main(verbosity=2)
