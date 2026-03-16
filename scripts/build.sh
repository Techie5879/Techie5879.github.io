#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"

bun install --cwd "$ROOT_DIR/src" --frozen-lockfile
bun run --cwd "$ROOT_DIR/src" build

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

cp -R "$ROOT_DIR/src/dist/." "$DIST_DIR/"

touch "$DIST_DIR/.nojekyll"
