#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"

npm --prefix "$ROOT_DIR/sites/finalastro" install
npm --prefix "$ROOT_DIR/sites/finalastro" run build

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

cp -R "$ROOT_DIR/sites/finalastro/dist/." "$DIST_DIR/"

touch "$DIST_DIR/.nojekyll"
