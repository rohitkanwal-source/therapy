#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-5500}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Serving ${SCRIPT_DIR} at: http://127.0.0.1:${PORT}/"
echo "If using Codespaces/remote VM, open forwarded port ${PORT}."
cd "${SCRIPT_DIR}"
python3 -m http.server "$PORT" --bind 0.0.0.0
