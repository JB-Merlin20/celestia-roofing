# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static marketing website for **Celestia Crest Roofing Contractors**, a roofing company serving South Florida. No build system, no JavaScript framework — plain HTML + CSS served as static files.

## Architecture

- **Homepage**: `index.html` — main landing page with schema.org Organization markup, service catalog, and links to all location pages.
- **Location pages**: Each city has its own directory (`{city-name}-celestia-crest-roofing-contractors/index.html`) with LocalBusiness schema, city-specific phone numbers, and Google Maps CIDs.
- **Shared stylesheet**: `style.css` — single CSS file used by the homepage. Location pages inline their own styles.
- **Images**: `images/` — hero backgrounds, about images, and before/after project photos.

## Homepage Sections (in order)

Fixed header bar with nav + hamburger mobile menu > Hero > Stats bar > About > Services grid (12 services) > Why Choose Us > Before/After sliders (JS-powered) > Testimonials > CTA banner > Locations with embedded Google Maps > Footer > Mobile call bar

## Locations & Phone Numbers

| City | Phone | Google Maps CID |
|------|-------|----------------|
| Coral Gables | (305) 845-4979 | 15795796561226783182 |
| Dania Beach | (954) 539-2815 | 7766927189239794241 |
| Homestead | (305) 845-4954 | 5338402920854065948 |
| North Miami Beach | (305) 845-4879 | 5557590663680496408 |
| Opa-locka | (305) 845-5128 | 2808004141621437797 |
| Pembroke Pines | (954) 539-2934 | 16804959231866312283 |
| Plantation | (754) 297-5680 | 10605896307997853817 |

## Design System

- Colors: primary `#111111`, accent `#F6CF69`, text `#5A5A5A`, light bg `#F6F5F4`
- Fonts: Cormorant (headings), Plus Jakarta Sans (body), Manrope (accent)
- Font Awesome 6.5.1 loaded from local mirror path (`../cdnjs.cloudflare.com/...`), not a CDN

## Key Conventions

- Heavy use of inline styles on HTML elements alongside the shared CSS
- Each location page is self-contained with its own inline `<style>` block and schema markup
- JavaScript is vanilla, inline `<script>` blocks (before/after sliders, hamburger menu, mobile call bar)
- Mobile breakpoint at 768px with responsive overrides at bottom of homepage
- Version tags in HTML comments: `v3-frankie-rebuild-20260311` (homepage), `v4-location-rebuild-20260311` (location pages)

## Development

No build step. Open `index.html` in a browser or use any static file server:

```bash
npx serve .
```
