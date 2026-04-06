# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static marketing website for **Celestia Crest Roofing Contractors**, a roofing company serving South Florida. No build system, no JavaScript framework — plain HTML + CSS served as static files.

## Architecture

- **Homepage**: `index.html` — main landing page with schema.org Organization markup, service catalog, and links to all location pages.
- **Location pages**: Each city has its own directory (`{city-name}-celestia-crest-roofing-contractors/index.html`) with LocalBusiness schema, city-specific phone numbers, and Google Maps CIDs.
- **Shared stylesheet**: `style.css` — single CSS file used by the homepage. Location pages inline their own styles.
- **Images**: `images/` — hero backgrounds, about images, and before/after project photos.

## Locations Served (7 cities)

Coral Gables, Dania Beach, Homestead, North Miami Beach, Opa-locka, Pembroke Pines, Plantation. Each has a unique phone number and Google Maps listing.

## Design System (CSS Variables in `style.css`)

- Dark theme with gold accents: `--color-primary: #111111`, `--color-accent: #F6CF69`
- Fonts: Cormorant (headings), Plus Jakarta Sans (body), Manrope (accent)
- External deps: Google Fonts, Font Awesome 6.5.1 (loaded from local mirror of `cdnjs.cloudflare.com`)

## Development

No build step. Open `index.html` in a browser or use any static file server:

```bash
npx serve .
# or
python -m http.server 8000
```

## Key Conventions

- Version tags in HTML comments: `v3-frankie-rebuild-20260311` (homepage), `v4-location-rebuild-20260311` (location pages)
- Font Awesome loaded from a local mirror path (`../cdnjs.cloudflare.com/...` or `../../cdnjs.cloudflare.com/...`), not a CDN URL
- Heavy use of inline styles on HTML elements alongside the shared CSS
- Each location page is self-contained with its own inline `<style>` block and schema markup
