#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build/smoke
python3 -m gcglue execute gcglue.toml \
  --no-codegen \
  --max-steps 120000000 \
  --event-log \
  --dump-gx-latest build/smoke/latest.ppm
