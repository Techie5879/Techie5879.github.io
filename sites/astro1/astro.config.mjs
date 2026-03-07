import { defineConfig } from "astro/config";

export default defineConfig({
  site: "https://techie5879.github.io",
  base: "/astro1",
  output: "static",
  markdown: {
    syntaxHighlight: "shiki"
  }
});
