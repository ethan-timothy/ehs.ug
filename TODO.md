# TODO

Remaining work for the Extreme High School (EHS) website. Built with Hugo;
content migrated from ugandaeducation.cfsites.org and rewritten to cover the
High School only. Run `hugo serve` to preview, `hugo` to build.

## Content

- [ ] Update dated information (source text is from 2013): school fees, term
      dates, registration deadlines, bank account details.
- [ ] Rewrite the "Vaccancies" page: it currently contains a 2013 letter to
      students instead of actual job vacancies.
- [ ] Fix typos carried over from the source site:
      - "Vaccancies" -> "Vacancies" (menu label, title, slug)
      - "Carriculum" -> "Curriculum" (menu label, title, slug)
      - "REQUIREMENSTS" -> "Requirements"
      - "Well come" -> "Welcome"
      - Glued words from the source ("studentsshall", "fornew students")
- [ ] Fill the two pages that are empty on the source site:
      Facilities, Staff (currently showing a placeholder).
- [ ] Verify the Barclays account details (Supporting us page) are still
      correct. The old cfsites.org link on Contacts has been removed.
- [ ] Replace low-quality photos (2012-era, 448x336) with current ones;
      get a larger or vector version of the logo.

## Design and UX

- [ ] Tune the home page hero copy and fact numbers when current school
      data is available (figures are from the 2013 source site).
- [ ] Consider renaming the "Vacancies" page (it holds fees/requirements,
      not job openings) once its content is rewritten.

## SEO and metadata

- [ ] Set the production `baseURL` in hugo.toml (currently https://ehs.ug/).
- [ ] Add meaningful alt text to content images (all currently empty).
- [ ] Consider hreflang/geo targeting once hosting is confirmed.

## Images

- [ ] Serve WebP variants via the image render hook (currently JPEG at q80,
      max 900px wide).

## Technical

- [ ] Deploy via Coolify: Dockerfile (multi-stage Hugo build + nginx) and
      nginx.conf are in place; create the app in Coolify building from
      the repo root Dockerfile, port 80.
- [ ] Add a CI check that runs `hugo` on every commit.

## Done

- [x] Migrate all pages and images from ugandaeducation.cfsites.org;
      rewrite the site to cover the High School only (About EJS page and
      junior school references removed).
- [x] Orange and white theme (school uniform colors), responsive layouts.
- [x] SEO head: meta descriptions, canonical, Open Graph, Twitter cards,
      JSON-LD School structured data.
- [x] Hugo Pipes: images from assets/ with resize + lazy loading, favicon
      and logo generated from source assets.
- [x] robots.txt with configurable disallow rules and sitemap reference.
- [x] Home page hero (photo, motto, CTA buttons) and quick-facts cards.
- [x] Contacts page: clickable tel:/mailto: links plus a Google Maps embed.
- [x] Collapsible hamburger menu below 900px.
- [x] Removed the unused taxonomy/term layouts from themes/EHS/layouts
      and disabled taxonomy/term kinds in hugo.toml (no tagging planned).
- [x] Custom 404 page.
- [x] News converted to a dated-post section with a post list layout.
- [x] Mobile-first navigation: 6-item top nav with two-tier sections
      (about/, admissions/, support/), section hub pages with child cards,
      breadcrumbs on child pages, and aliases for all old URLs.
