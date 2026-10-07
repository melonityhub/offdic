#!/usr/bin/env python3
"""Export a reproducible source-only project. Explicit allowlist; never copies the Git checkout."""
import argparse
import hashlib
import json
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[1]
FILES = ['.gitignore', '.github/workflows/android.yml', 'build.gradle.kts', 'settings.gradle.kts',
         'gradle.properties', 'gradlew', 'gradlew.bat', 'dbsample/sample.sqlite', 'dbsample/sample_report.md',
         'tools/test_contract.py', 'tools/test_gateway.py', 'tools/annotate_build.py', 'tools/export_standalone.py',
         'tools/test_standalone.py', 'tools/annotate_device_tests.py', 'docs/DATABASE_FA.md', 'docs/FEATURES_FA.md', 'docs/AI_SETTINGS_FA.md',
         'docs/STANDALONE_FA.md', 'docs/BUILD_VERIFICATION_FA.md', 'README_STANDALONE.md']
DIRECTORIES = ['app/src', 'gradle/wrapper', 'tests/fixtures']
BLOCKED = {'.git', '.gradle', '.idea', 'build', '__pycache__', '.cache'}


def entries():
    paths = [ROOT / file for file in FILES] + [ROOT / 'app/build.gradle.kts', ROOT / 'gateway/server.py']
    for folder in DIRECTORIES:
        paths.extend(p for p in (ROOT / folder).rglob('*') if p.is_file())
    files = {}
    for path in paths:
        relative = path.relative_to(ROOT)
        if path.is_symlink() or any(part in BLOCKED for part in relative.parts):
            continue
        # Only the committed sample is packaged; never full/imported databases or secrets.
        if path.suffix in {'.sqlite', '.db', '.pyc', '.apk', '.aab', '.jks', '.keystore'} and str(relative) != 'dbsample/sample.sqlite':
            continue
        if path.name.startswith('.env') or path.name == 'local.properties':
            continue
        if not path.is_file():
            raise FileNotFoundError(f'Missing export input: {relative}')
        name = 'README.md' if str(relative) == 'README_STANDALONE.md' else relative.as_posix()
        files[name] = path.read_bytes()
    # The exporter can be rerun in the standalone repository, too.
    files['README_STANDALONE.md'] = files['README.md']
    return files


def export(destination):
    files = entries()
    manifest = {name: hashlib.sha256(content).hexdigest() for name, content in sorted(files.items())}
    files['SOURCE_MANIFEST.json'] = (json.dumps(manifest, indent=2) + '\n').encode()
    destination.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(destination, 'w', compression=zipfile.ZIP_DEFLATED) as archive:
        for name, content in sorted(files.items()):
            info = zipfile.ZipInfo('offdic-standalone/' + name, date_time=(2026, 1, 1, 0, 0, 0))
            info.create_system = 3
            info.external_attr = (0o100755 if name == 'gradlew' else 0o100644) << 16
            info.compress_type = zipfile.ZIP_DEFLATED
            archive.writestr(info, content)
    print(f'{destination}: {len(files)} files, SHA256 {hashlib.sha256(destination.read_bytes()).hexdigest()}')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, default=ROOT / 'artifacts/offdic-standalone.zip')
    export(parser.parse_args().output)
