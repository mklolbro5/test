#!/usr/bin/env bash
set -euo pipefail

MSG="${1:-Harmless change}"
if [ ! -f "dummy.txt" ]; then
  echo "dummy.txt not found. Run from repo root."
  exit 1
fi

printf "%s\n" "$MSG" >> dummy.txt
echo "Appended safe line to dummy.txt: $MSG"
