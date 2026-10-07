#!/usr/bin/env python3
"""Fail on missing/empty results too: a green emulator step must actually execute tests."""
from pathlib import Path
import xml.etree.ElementTree as ET
import sys

cases = failures = skipped = 0
for path in Path('app/build/outputs/androidTest-results').rglob('*.xml'):
    try:
        root = ET.parse(path).getroot()
    except ET.ParseError:
        continue
    for case in root.iter('testcase'):
        cases += 1
        if case.find('skipped') is not None:
            skipped += 1
        for tag in ('failure', 'error'):
            failure = case.find(tag)
            if failure is not None:
                failures += 1
                message = (case.get('name', '') + ': ' + failure.get('message', '') + '\n' + (failure.text or ''))[:6000]
                message = message.replace('%', '%25').replace('\r', '%0D').replace('\n', '%0A')
                print('::error title=Android device test::' + message)
print(f'::notice title=Android device test summary::{cases} test cases; {failures} failures; {skipped} skipped')
if cases == 0 or failures or cases == skipped:
    print('::error title=Android verification::Missing passing test results or a test failed')
    sys.exit(1)
