#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PORT="${COWART_PORT:-43217}"

cd "$ROOT_DIR"

if [ ! -d node_modules ]; then
  npm install
fi

echo "Cowart canvas: http://127.0.0.1:${PORT}"
exec npm run dev -- --host 127.0.0.1 --port "$PORT"
