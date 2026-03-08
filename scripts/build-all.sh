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

"$QUARTO_BIN" render "$ROOT_DIR/sites/quarto1"
mkdir -p "$DIST_DIR/quarto1"
cp -R "$ROOT_DIR/sites/quarto1/_site/." "$DIST_DIR/quarto1/"

"$QUARTO_BIN" render "$ROOT_DIR/sites/quarto2"
mkdir -p "$DIST_DIR/quarto2"
cp -R "$ROOT_DIR/sites/quarto2/_site/." "$DIST_DIR/quarto2/"

"$QUARTO_BIN" render "$ROOT_DIR/sites/quarto3"
mkdir -p "$DIST_DIR/quarto3"
cp -R "$ROOT_DIR/sites/quarto3/_site/." "$DIST_DIR/quarto3/"

"$QUARTO_BIN" render "$ROOT_DIR/sites/quarto4"
mkdir -p "$DIST_DIR/quarto4"
cp -R "$ROOT_DIR/sites/quarto4/_site/." "$DIST_DIR/quarto4/"

npm --prefix "$ROOT_DIR/sites/astro" install
npm --prefix "$ROOT_DIR/sites/astro" run build
mkdir -p "$DIST_DIR/astro"
cp -R "$ROOT_DIR/sites/astro/dist/." "$DIST_DIR/astro/"

npm --prefix "$ROOT_DIR/sites/astro1" install
npm --prefix "$ROOT_DIR/sites/astro1" run build
mkdir -p "$DIST_DIR/astro1"
cp -R "$ROOT_DIR/sites/astro1/dist/." "$DIST_DIR/astro1/"

npm --prefix "$ROOT_DIR/sites/astro2" install
npm --prefix "$ROOT_DIR/sites/astro2" run build
mkdir -p "$DIST_DIR/astro2"
cp -R "$ROOT_DIR/sites/astro2/dist/." "$DIST_DIR/astro2/"

npm --prefix "$ROOT_DIR/sites/astro3" install
npm --prefix "$ROOT_DIR/sites/astro3" run build
mkdir -p "$DIST_DIR/astro3"
cp -R "$ROOT_DIR/sites/astro3/dist/." "$DIST_DIR/astro3/"

npm --prefix "$ROOT_DIR/sites/astro4" install
npm --prefix "$ROOT_DIR/sites/astro4" run build
mkdir -p "$DIST_DIR/astro4"
cp -R "$ROOT_DIR/sites/astro4/dist/." "$DIST_DIR/astro4/"

npm --prefix "$ROOT_DIR/sites/finalastro" install
npm --prefix "$ROOT_DIR/sites/finalastro" run build
mkdir -p "$DIST_DIR/finalastro"
cp -R "$ROOT_DIR/sites/finalastro/dist/." "$DIST_DIR/finalastro/"

bundle install --gemfile "$ROOT_DIR/sites/jekyll/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll" --destination "$DIST_DIR/jekyll" --config "$ROOT_DIR/sites/jekyll/_config.yml"

bundle install --gemfile "$ROOT_DIR/sites/jekyll1/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll1/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll1" --destination "$DIST_DIR/jekyll1" --config "$ROOT_DIR/sites/jekyll1/_config.yml"

bundle install --gemfile "$ROOT_DIR/sites/jekyll2/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll2/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll2" --destination "$DIST_DIR/jekyll2" --config "$ROOT_DIR/sites/jekyll2/_config.yml"

bundle install --gemfile "$ROOT_DIR/sites/jekyll3/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll3/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll3" --destination "$DIST_DIR/jekyll3" --config "$ROOT_DIR/sites/jekyll3/_config.yml"

bundle install --gemfile "$ROOT_DIR/sites/jekyll4/Gemfile"
BUNDLE_GEMFILE="$ROOT_DIR/sites/jekyll4/Gemfile" bundle exec jekyll build --source "$ROOT_DIR/sites/jekyll4" --destination "$DIST_DIR/jekyll4" --config "$ROOT_DIR/sites/jekyll4/_config.yml"

touch "$DIST_DIR/.nojekyll"
