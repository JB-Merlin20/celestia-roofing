#!/bin/bash
# Auto-generates sitemap.xml by scanning for all index.html pages.
# Run from the project root: bash generate-sitemap.sh

DOMAIN="https://celestiacrestroofingcontractors.com"
SITEMAP="sitemap.xml"
TODAY=$(date +%Y-%m-%d)

cat > "$SITEMAP" <<HEADER
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>${DOMAIN}/</loc>
    <lastmod>${TODAY}</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
HEADER

# Find all location/service page directories containing an index.html
for page in */index.html; do
  dir=$(dirname "$page")
  # Skip non-page directories (images, assets, etc.)
  [[ "$dir" == "images" ]] && continue
  [[ "$dir" == "." ]] && continue

  cat >> "$SITEMAP" <<ENTRY
  <url>
    <loc>${DOMAIN}/${dir}/</loc>
    <lastmod>${TODAY}</lastmod>
    <changefreq>monthly</changefreq>
    <priority>0.8</priority>
  </url>
ENTRY
done

echo "</urlset>" >> "$SITEMAP"

echo "Sitemap generated: $SITEMAP ($(grep -c '<url>' "$SITEMAP") URLs)"
