import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";

export default defineConfig({
  site: "https://techie5879.github.io",
  output: "static",
  integrations: [mdx()],
  markdown: {
    syntaxHighlight: "shiki",
    shikiConfig: {
      themes: { light: "github-light", dark: "github-dark" },
      defaultColor: false
    }
  }
});
