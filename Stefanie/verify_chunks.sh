#!/bin/bash
set -euo pipefail

ORIGINAL="sessions.txt"
MERGED="merged_sessions.txt"

echo "[Test] Concatenating chunk_*.log..."
cat $(ls chunk_*.log | sort) > "$MERGED"

echo "[Test] Checking line counts..."
orig_lines=$(wc -l < "$ORIGINAL")
merged_lines=$(wc -l < "$MERGED")

if [ "$orig_lines" -ne "$merged_lines" ]; then
  echo "[FAIL] Line count mismatch:"
  echo "Original: $orig_lines lines"
  echo "Merged:   $merged_lines lines"
  echo "Files are not identical."
  exit 1
fi

echo "[Test] Line counts match. Running full diff..."
if diff -q "$ORIGINAL" "$MERGED" > /dev/null; then
  echo "[OK] Split and merge is correct. Files are identical."
  rm "$MERGED"
  exit 0
else
  echo "[FAIL] Files differ despite matching line counts."
  echo "Run: diff \"$ORIGINAL\" \"$MERGED\" to inspect differences."
  exit 1
fi

