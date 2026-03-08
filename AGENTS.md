# Repository Guide

## Purpose

This repo is the personal GitHub Pages site for `techie5879.github.io`.

## Current Structure

- `/` is the live site
- The Astro source code lives in `sites/finalastro`
- The site is served from the root domain, not `/finalastro/`
- Built output goes to `dist`

## Working Expectations

- Treat Astro as the source of truth
- Keep routes and assets root-safe for GitHub Pages
- Prefer static-output-friendly changes
- Do not reintroduce old multi-framework preview structure unless explicitly requested

## Deployment Expectations

- Build from `sites/finalastro`
- Publish a single final artifact from `dist`
- Keep all links, routes, and assets root-safe for `/`
- Verify routes, media, and asset paths after changes
