#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
python3 -m gcglue validate gcglue.toml
python3 -m gcglue codegen gcglue.toml
