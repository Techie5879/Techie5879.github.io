import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "astro/zod";

const blog = defineCollection({
  loader: glob({ pattern: "**/*.md", base: "./src/data/blog" }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    pubDate: z.coerce.date(),
    categories: z.array(z.string()).default([]),
    image: z.string().optional(),
    section: z.enum(["technical", "non-technical"]).default("technical")
  })
});

const publications = defineCollection({
  loader: glob({ pattern: "**/*.md", base: "./src/data/publications" }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    pubDate: z.coerce.date(),
    venue: z.string(),
    authors: z.string(),
    image: z.string().optional(),
    pdf: z.string().url(),
    code: z.string().url()
  })
});

export const collections = { blog, publications };
