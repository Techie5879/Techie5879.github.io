import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "astro/zod";

const blog = defineCollection({
  loader: glob({ pattern: "**/*.{md,mdx}", base: "./src/data/blog" }),
  schema: z.object({
    title: z.string(),
    description: z.string().optional(),
    pubDate: z.coerce.date(),
    categories: z.array(z.string()).default([]),
    image: z.string().optional(),
    section: z.enum(["inferences", "downtime"]).default("inferences")
  })
});


export const collections = { blog };
