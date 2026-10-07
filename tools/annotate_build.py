#!/usr/bin/env python3
"""Turn a Gradle build log into GitHub Actions annotations.

Invoked by .github/workflows/android.yml only when the Gradle step fails. It scans the log for
error lines and prints `::error file=...::message` workflow commands so the failure shows up on
the diff. It never fails the step itself and tolerates a missing log file.
"""
import re
import sys
from pathlib import Path

ERROR_PATTERNS = [
    re.compile(r"^e: .*", re.M),  # Kotlin compiler errors
    re.compile(r".*\berror:\s.*", re.I),
    re.compile(r"^\s*>\s.*(?:failed|error|exception).*", re.I | re.M),
    re.compile(r"^\S+\.(?:kt|java|kts):\d+:\d+:\s*error:.*", re.M),
    re.compile(r"FAILURE:.*", re.M),
    re.compile(r"What went wrong:.*", re.M),
]


def annotate(log_path: Path) -> int:
    if not log_path.is_file():
        print(f"::warning::build log not found: {log_path}")
        return 0
    text = log_path.read_text(encoding="utf-8", errors="replace")
    seen = set()
    count = 0
    for pattern in ERROR_PATTERNS:
        for match in pattern.findall(text):
            line = match.strip()
            if not line or line in seen:
                continue
            seen.add(line)
            # Collapse whitespace and escape workflow-command control characters.
            message = re.sub(r"[\r\n]+", " ", line).replace("%", "%25").replace("\r", "").replace("\n", " ")
            print(f"::error::build:{message[:400]}")
            count += 1
            if count >= 100:
                return count
    if count == 0:
        print("::warning::build failed but no recognizable error line was found in the log")
    return count


if __name__ == "__main__":
    path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("gradle-build.log")
    annotate(path)
