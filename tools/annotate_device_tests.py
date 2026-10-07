#!/usr/bin/env python3
"""Turn Android instrumentation test results into GitHub Actions annotations.

Invoked by .github/workflows/android.yml after the emulator test step. It reads the JUnit XML
under app/build/outputs/androidTest-results and prints one `::error` per failing test, plus a
`::warning` summary. It tolerates a missing results directory (e.g. when the emulator never
started) and never fails the step itself.
"""
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

RESULTS = Path("app/build/outputs/androidTest-results")


def annotate(results_dir: Path) -> int:
    if not results_dir.is_dir():
        print(f"::warning::no androidTest results at {results_dir}")
        return 0
    failures = 0
    for xml_file in sorted(results_dir.rglob("*.xml")):
        try:
            root = ET.parse(xml_file).getroot()
        except ET.ParseError:
            continue
        for case in root.iter("testcase"):
            name = f"{case.get('classname', '?')}.{case.get('name', '?')}"
            for failure in list(case.iter("failure")) + list(case.iter("error")):
                message = (failure.get("message") or failure.text or "failed").strip().splitlines()
                headline = message[0] if message else "failed"
                print(f"::error::device-test:{name}: {headline[:300]}")
                failures += 1
    if failures == 0:
        print("device tests: all passed (or no failures reported)")
    else:
        print(f"::warning::device tests reported {failures} failure(s)")
    return failures


if __name__ == "__main__":
    target = Path(sys.argv[1]) if len(sys.argv) > 1 else RESULTS
    annotate(target)
