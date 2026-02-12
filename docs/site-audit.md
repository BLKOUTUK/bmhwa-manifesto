# Site Audit: bmhwa.co.uk

**Date**: February 11, 2026
**Platform**: Wix (Thunderbolt renderer)

## Summary

The current site has solid bones — clean page structure, powerful content — but the platform is actively working against the manifesto's goals. Wix's client-side rendering means search engines struggle to index the content, the site loads slowly, and the manifesto itself is harder to find and share than it should be. For a national policy campaign, this matters.

## Platform Issues

### SEO (Critical)
- **Client-side JavaScript rendering**: The actual manifesto text is invisible in the page source. Google has to execute JavaScript to "see" the content — and often doesn't bother, especially for newer or less-linked sites.
- **Impact**: The manifesto is harder to find via search. People searching "Black mental health manifesto UK" may not find bmhwa.co.uk.
- **Fix**: Any server-rendered platform (Webflow, Astro, WordPress) solves this immediately.

### Performance
- **Heavy framework overhead**: Wix loads its own security hardening, polyfills, and parastorage CDN before any content appears.
- **Impact**: Slow first load, especially on mobile or slower connections. Policy audiences checking the site on their phone between meetings may bounce.

### Accessibility
- **Minimal semantic HTML**: Wix outputs heavily nested `<div>` elements with limited ARIA attributes.
- **Impact**: Screen reader users have a poor experience. For a health equity campaign, accessibility isn't optional.

### Shareability
- **No Open Graph tags visible in source**: When someone shares a link on Twitter/LinkedIn/WhatsApp, the preview may be generic or missing.
- **Impact**: Every time someone shares the manifesto link, it's a missed opportunity for a compelling preview that makes people click.

## Current Pages

| Page | URL | Notes |
|------|-----|-------|
| Home | `/` | Landing page |
| About Us | `/about-us-1` | Alliance background |
| The Manifesto | `/the-manifesto` | Core content |
| Get Involved | `/get-involved` | Action page |
| Press / Media | `/press-media` | Media resources |
| Privacy Policy | `/privacy-policy` | Legal |

**Assessment**: 5 core pages is appropriate. The information architecture is sound — the issue is execution, not structure.

## Current Design

From CSS analysis:
- **Primary blue**: #0057E1
- **Accent red**: #ED1C24
- **Typography**: Helvetica Bold (headlines), Din Next Light (body), Oswald (accents)

**Observation**: The NHS blue (#0057E1) unconsciously aligns the manifesto with the institution it's critiquing. The design is clean but generic — it doesn't convey the gravity of a national manifesto demanding structural change.

## What's Working

- Clean page structure (5 pages covers the essential ground)
- The manifesto content itself is powerful and well-written
- The coalition model (multiple organisations) gives authority
- Press/media page shows media-readiness

## What's Missing

### Content gaps
- [ ] Downloadable manifesto PDF prominently featured (it exists on Google Drive but isn't prominent)
- [ ] Key statistics that make the case (e.g., "Black people detained under the Mental Health Act at 4x the rate of white people")
- [ ] Endorsement wall showing supporting organisations
- [ ] Progress tracker (what's been achieved since launch, what's still needed)
- [ ] Blog/news for campaign updates
- [ ] Event listings
- [ ] Personal stories / testimonials
- [ ] Resources for practitioners
- [ ] Learning & capacity building section

### Functionality gaps
- [ ] Newsletter/mailing list signup
- [ ] Supporter pledge or sign-up form
- [ ] MP lookup tool ("Find your MP and write to them")
- [ ] Social sharing optimisation (Open Graph tags, share images, share buttons)
- [ ] Proper SEO (meta descriptions, structured data, sitemap)

### Accessibility gaps
- [ ] Semantic HTML (proper headings, landmarks, labels)
- [ ] ARIA attributes for interactive elements
- [ ] Keyboard navigation
- [ ] Sufficient colour contrast throughout
- [ ] Alt text on all images

## Recommendation

Migrate away from Wix to a platform that renders server-side. The manifesto content deserves to be:
1. **Findable** — proper SEO so people searching for it can find it
2. **Shareable** — rich previews when shared on social media
3. **Accessible** — usable by everyone, including screen reader users
4. **Fast** — loads quickly on any device and connection
5. **Maintainable** — easy for non-technical people to update

Platform options are detailed in `platform-comparison.md`.
