#!/usr/bin/env python3
from pathlib import Path
import xml.etree.ElementTree as ET
for path in Path('app/build/outputs/androidTest-results').rglob('*.xml'):
    try:
        root = ET.parse(path).getroot()
    except ET.ParseError:
        continue
    for case in root.iter('testcase'):
        for tag in ('failure', 'error'):
            failure = case.find(tag)
            if failure is not None:
                message = (case.get('name', '') + ': ' + failure.get('message', '') + '\n' + (failure.text or ''))[:6000]
                message = message.replace('%', '%25').replace('\r', '%0D').replace('\n', '%0A')
                print('::error title=Android device test::' + message)
