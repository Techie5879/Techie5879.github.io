# Repository Guide

## Purpose

This repo is the personal GitHub Pages site for `techie5879.github.io`.

The near-term goal is not a single polished site. The goal is to use one Pages domain to compare multiple static site generators side by side with roughly the same content and information architecture.

## Target URL Shape

- `/` -> lightweight landing page / framework chooser
- `/hugo/` -> Hugo preview
- `/quarto/` -> Quarto preview
- `/astro/` -> Astro preview
- `/jekyll/` -> Jekyll preview, if added

Each framework preview may also expose matching nested routes such as:

- `/hugo/blog/`
- `/quarto/blog/`
- `/astro/blog/`
- `/jekyll/blog/`

## Core Rule

Prefer one GitHub Pages site with many subpaths over multiple Pages repos.

Unless explicitly requested otherwise, changes should preserve the idea that all previews live under this single personal site domain.

## Current State

The repo currently contains an existing Hugo Blox site at the root. Treat that as legacy/current implementation, not as the long-term required architecture.

Do not delete or replace the current root site wholesale unless the user explicitly asks for that migration.

## Working Expectations

- Keep framework previews comparable. If adding a page type or section, mirror it across active framework previews when practical.
- Favor clean separation between framework-specific source directories and the final published output.
- Make subpath-aware configuration changes. Every framework hosted below a subdirectory must use the correct base path so assets and links work when served from `/hugo/`, `/quarto/`, `/astro/`, etc.
- Prefer static-output-friendly approaches. GitHub Pages is static hosting, so avoid solutions that require server-side routing or rewrites.
- If proposing structure changes, optimize for side-by-side evaluation first and later promotion of one winner to `/`.

## Deployment Expectations

- A single published artifact can contain multiple framework outputs.
- If builds are introduced, prefer a single deployment workflow that assembles all generated files into one final Pages artifact.
- The most common failure mode is broken asset/link paths under subdirectories; verify those first.

## When Making Recommendations

Bias toward decisions that make comparison easy:

- same content model across frameworks
- same major routes across frameworks
- low-friction local preview
- easy future promotion of one framework to the root site
