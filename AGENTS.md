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

## Component Design (Light/Dark Mode)

The site supports light and dark themes via `data-theme` on `<html>`. All visual styling must respect both modes. Follow these rules for every component:

### Use CSS custom properties, never hardcoded colors

The design tokens live in `src/styles/global.css`. These are the available tokens:

| Token | Purpose |
|-------|---------|
| `--bg` | Page/card background |
| `--bg-alt` | Subtle contrast background (hover states, callouts, code) |
| `--text-main` | Primary text |
| `--text-muted` | Secondary/meta text |
| `--accent` | Brand color (links, highlights, borders) |
| `--accent-hover` | Darker/lighter accent for hover states |
| `--border` | Dividers, card borders, separators |
| `--font-body` / `--font-heading` / `--font-meta` / `--font-mono` | Typography |

### Rules

1. **Never use inline `style` attributes with hardcoded hex/rgb values.** Use a `<style>` block with `var(--token)` references instead. Inline styles bypass theme switching entirely.
2. **Use scoped `<style>` blocks**, not inline styles. Astro scopes them automatically. This keeps dark mode working and the component self-contained.
3. **Backgrounds must use `--bg` or `--bg-alt`**, never a raw color. If you need a tinted background (e.g., a colored callout), layer it with `opacity` or use `--bg-alt` as the base.
4. **Text must use `--text-main` or `--text-muted`**. Use `--accent` for emphasis text only (labels, links).
5. **Borders must use `--border`** or `--accent` for emphasis borders.
6. **Semantic accent colors** (green for success, amber for warning) are acceptable as border or label accents, but the surrounding background and body text must still use the theme tokens.
7. **Always test both modes** after creating or editing a component. Toggle the theme and verify nothing becomes invisible or unreadable.

### Component skeleton

```astro
---
interface Props {
  /* typed props here */
}
const { /* destructure */ } = Astro.props;
---

<div class="my-component">
  <slot />
</div>

<style>
  .my-component {
    background: var(--bg-alt);
    color: var(--text-main);
    border: 1px solid var(--border);
  }
</style>
```

Reference: `src/components/RepoCard.astro` (good example using tokens throughout) and `src/components/Callout.astro` (scoped styles with semantic accent colors).

## Deployment Expectations

- Build from `src`
- Publish a single final artifact from `dist`
- Keep all links, routes, and assets root-safe for `/`
- Verify routes, media, and asset paths after changes
