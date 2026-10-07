#!/usr/bin/env python3
"""Make actual compiler/lint diagnostics visible via GitHub's checks API as well as logs."""
import sys
from pathlib import Path
lines = Path(sys.argv[1]).read_text(errors='replace').splitlines()
selected = [line for line in lines if line.startswith('e:') or ' error:' in line or 'Error:' in line or '[Fatal Error]' in line]
if not selected:
    for i, line in enumerate(lines):
        if '* What went wrong:' in line:
            selected.extend(lines[i+1:i+12])
for line in selected[:30]:
    message = line.replace('%', '%25').replace('\r', '%0D').replace('\n', '%0A')
    print('::error title=Android build::' + message)
