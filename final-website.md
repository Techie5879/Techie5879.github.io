# Final Website Design Plan & Preferences

## Overview & Architecture
* **Framework:** Astro (building heavily upon the `Astro Base` template).
* **Target Subpath:** `/finalastro/` (All other existing framework previews and subpaths must remain completely untouched).
* **Overall Aesthetic:** Minimalist, clean, and highly legible. The design will strictly use a **light theme** (light background with dark text) to ensure maximum readability and a professional, "easy on the eyes" appearance.

## Core Structure & Content
* **Removed Sections:** The "Projects" section will be removed entirely, as extensive professional experience makes it redundant.
* **Core Sections:** 
  1. Home / About Me
  2. Experience
  3. Publications
  4. Technical Blog
  5. Non-Technical Blog
* **Content Prominence:** The **Technical** and **Non-Technical** blogs need to be highly prominent ("up in your face") to immediately draw visitors to your writing.
* **Layout Sizing:** The main content container should utilize slightly more horizontal space than the default Astro Base template. It shouldn't be fully wide, but just a *little* wider to make better use of screen real estate while maintaining optimal reading line lengths.

## UI/UX & Interactions
* **Navbar:** Retain the unpretentious, straightforward layout of the Astro Base navbar, but integrate the engaging, smooth hover animations found in the Astro Terminal iteration.
* **Section/Card Interactivity:** Adopt the card hover effects from the Astro Terminal design. When hovering over various sections or list items (like experience entries, publications, or blog posts), they should highlight with a subtle, smooth animation to provide great user feedback without being overly flashy.
* **Socials & Metadata:** Integrate clean, recognizable icons for social media links (e.g., GitHub, LinkedIn, Twitter/X) and contact information prominently within the Home/About Me section, inspired by the clear presentation in the existing Hugo implementation.

## Framework Rankings (For Context)
* **Astro:** Best overall. (Base and Terminal are top picks; Swiss is okay; Monograph is poor due to layout/space usage).
* **Jekyll:** Lab is the best of the bunch; others are not preferred.
* **Quarto:** Lowest ranked overall. Aurora is too "AI-slop gradient", Canvas and Document are better but still not ideal for this use case.