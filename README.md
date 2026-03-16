# Personal Website

Source for the personal site at `techie5879.github.io`.

- Framework: Astro
- Source code: `src`
- Production build output: `dist`
- Deploy target: GitHub Pages at the root domain

Key paths:

- Site data: `src/src/data`
- Pages: `src/src/pages`
- Layouts/styles: `src/src/layouts`, `src/src/styles`
- Public assets: `src/public`

Local build:

```bash
./scripts/build.sh
```

Local preview from the built output:

```bash
ruby -run -e httpd dist -p 4321
```

Then open `http://127.0.0.1:4321`.
