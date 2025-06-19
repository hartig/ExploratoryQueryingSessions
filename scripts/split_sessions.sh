#!/bin/bash
set -euo pipefail

# === Usage and arguments ===
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
  echo "Usage: $0 <input_file> [number_of_chunks]"
  exit 1
fi

INPUT_FILE="$1"
CHUNKS="${2:-12}"  # default to 12 if not specified

DELIMITER="=========================================== SESSION BEGIN ==========================================="

echo "[Step 1] Measuring session sizes..."
awk -v delim="$DELIMITER" '
$0 == delim {
  if (session) {
    print session
  }
  session = delim "\n"
  next
}
{
  session = session $0 "\n"
}
END {
  if (session) {
    print session
  }
}
' "$INPUT_FILE" | awk '{ print length }' > session_sizes.txt

echo "[Step 2] Assigning sessions to chunks..."
python3 - <<EOF
NUM_CHUNKS = $CHUNKS
sizes = [int(line.strip()) for line in open("session_sizes.txt")]
assignments = [[] for _ in range(NUM_CHUNKS)]
totals = [0] * NUM_CHUNKS

for i, sz in enumerate(sizes):
    idx = totals.index(min(totals))
    assignments[idx].append(i)
    totals[idx] += sz

with open("session_chunk_map.txt", "w") as f:
    for chunk_id, sess_ids in enumerate(assignments):
        for sess in sess_ids:
            f.write(f"{sess} {chunk_id}\\n")
EOF

echo "[Step 3] Writing sessions to output files..."
awk -v delim="$DELIMITER" '
BEGIN {
  while ((getline < "session_chunk_map.txt") > 0) {
    split($0, arr)
    session_map[arr[1]] = arr[2]
  }
  close("session_chunk_map.txt")
  session_index = -1
}
$0 == delim {
  if (session_index >= 0) {
    out = sprintf("chunk_%02d.log", session_map[session_index])
    for (i = 0; i < buf_len; i++) {
      print buffer[i] >> out
    }
    close(out)
  }
  session_index++
  buf_len = 0
}
{
  buffer[buf_len++] = $0
}
END {
  if (buf_len > 0 && session_index in session_map) {
    out = sprintf("chunk_%02d.log", session_map[session_index])
    for (i = 0; i < buf_len; i++) {
      print buffer[i] >> out
    }
    close(out)
  }
}
' "$INPUT_FILE"

echo "[Done] Output written to: chunk_00.log through chunk_$(printf "%02d" $((CHUNKS - 1))).log"

