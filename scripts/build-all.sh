#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
DIST_DIR="$ROOT_DIR/dist"
HUGO_BIN="${HUGO_BIN:-$ROOT_DIR/.tools/bin/hugo}"
QUARTO_BIN="${QUARTO_BIN:-$ROOT_DIR/.tools/quarto-root/bin/quarto}"
SITE_ORIGIN="${SITE_ORIGIN:-http://127.0.0.1:4321}"

if [ ! -x "$HUGO_BIN" ]; then
  HUGO_BIN="hugo"
fi

if [ ! -x "$QUARTO_BIN" ]; then
  QUARTO_BIN="quarto"
fi

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

cp -R "$ROOT_DIR/site-root/." "$DIST_DIR/"
cp -R "$ROOT_DIR/shared/public/." "$DIST_DIR/"

"$HUGO_BIN" --source "$ROOT_DIR/sites/hugo" --destination "$DIST_DIR/hugo" --baseURL "${SITE_ORIGIN%/}/hugo/"
"$QUARTO_BIN" render "$ROOT_DIR/sites/quarto"
mkdir -p "$DIST_DIR/quarto"
cp -R "$ROOT_DIR/sites/quarto/_site/." "$DIST_DIR/quarto/"

npm --prefix "$ROOT_DIR/sites/astro" install
npm --prefix "$ROOT_DIR/sites/astro" run build
mkdir -p "$DIST_DIR/astro"
cp -R "$ROOT_DIR/sites/astro/dist/." "$DIST_DIR/astro/"

bundle install --gemfile "$ROOT_DIR/sites/jekyll/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll" --destination "$DIST_DIR/jekyll" --config "$ROOT_DIR/sites/jekyll/_config.yml"

touch "$DIST_DIR/.nojekyll"
