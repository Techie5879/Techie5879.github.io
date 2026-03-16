# Repository Guide

## Purpose

This repo is the personal GitHub Pages site for `techie5879.github.io`.

## Current Structure

- `/` is the live site
- The Astro source code lives in `src`
- The site is served from the root domain, not a subpath
- Built output goes to `dist`

## Working Expectations

- Treat Astro as the source of truth
- Keep routes and assets root-safe for GitHub Pages
- Prefer static-output-friendly changes
- After site changes, rebuild the published output with `./scripts/build.sh`
- Verify every user-facing change with `agent-browser` before wrapping up

## Deployment Expectations

- Build from `src`
- Publish a single final artifact from `dist`
- Keep all links, routes, and assets root-safe for `/`
- Verify routes, media, and asset paths after changes
