# Personal Website

Source for the personal site at `techie5879.github.io`.

- Framework: Astro
- Source code: `sites/finalastro`
- Production build output: `dist`
- Deploy target: GitHub Pages at the root domain

Key paths:

- Site data: `sites/finalastro/src/data`
- Pages: `sites/finalastro/src/pages`
- Layouts/styles: `sites/finalastro/src/layouts`, `sites/finalastro/src/styles`
- Public assets: `sites/finalastro/public`

Local build:

```bash
./scripts/build-all.sh
```

Local preview from the built output:

```bash
ruby -run -e httpd dist -p 4321
```

Then open `http://127.0.0.1:4321`.
