#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p build/live
python3 -m gcglue play gcglue.toml \
  --no-codegen \
  --event-log \
  --port "${GCGLUE_PLAY_PORT:-8799}" \
  --live-dir build/live
