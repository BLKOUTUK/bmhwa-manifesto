# BMHWA Manifesto — Round 2 Design System

**Status:** Live direction (19 June 2026). Supersedes `docs/design-system.md` (Round 1).
**Built in-house** — no external design commission (Round 2 decision, 15 May 2026).
**Register:** balanced — bold display headlines on a calm, readable layout. Serious to
policy audiences, urgent to community. Steered deliberately *away* from the clinical
NHS-blue / generic-white default of the live Wix site.

## Lineage

Typographic-led, in the lineage Emory Douglas (Black Panther newspaper) → Tré Seals /
Vocal Type Foundry → Greg Bunbury's UK practice. Type does the political work; the
layout stays generous and legible so the manifesto reads as a document of record.

## Typeface

| Role | Face | Notes |
|------|------|-------|
| Display (H1, H2, wordmark, pull-quotes) | **BC Empire Windrush** | Greg Bunbury. **All-caps display face.** Big moments only — never body, never small. Cut from the HMT Empire Windrush hull lettering. |
| Sub-headings (H3, H4) | **Work Sans** 700 | Kept in a clean sans for readability at smaller sizes. |
| Body / UI | **Work Sans** 400–600 | Warm humanist sans, accessible, already integrated. |
| Data / stats | **Space Grotesk** | Stat numbers, labels. |

**Licence:** BC Empire Windrush **Webfont** licence, 10k page-views tier (£15, bought
19 Jun 2026). Files: `public/fonts/bcempirewindrush-regular-4-webfont.{woff2,woff}`.
Licence PDF archived at `docs/licences/`. The font is loaded via a self-hosted
`@font-face` (family `bc_empire_windrushregular`) in `src/styles/global.css` — **not**
a CDN. If page views ever exceed 10k/month, upgrade the tier.

## Palette

Warm, serious, urgent. No blue. No pure white.

| Token | Hex | Use |
|-------|-----|-----|
| `--primary` | `#2B211C` | Deep brown-black. Dark surfaces (header, hero, footer, CTA), display headings on light. |
| `--accent` | `#D89A2D` | Warm ochre/gold. Pan-African warmth — section labels, links, key emphasis. |
| `--urgent` | `#C8341F` | Demand red. Urgency, calls to action. Use sparingly. |
| `--text` | `#1A1A1A` | Near-black body text. |
| `--light-bg` | `#F6F2EA` | Warm off-white page background (not clinical white). |
| `--card-bg` | `#FFFFFF` | Clean content cards on the warm background. |
| `--muted` | `#6F635A` | Warm grey-brown secondary text (not cold grey). |
| `--border` | `rgba(43,33,28,.12)` | Hairlines, dividers. |

All tokens are CSS custom properties in `src/styles/global.css:root`. The whole site
reads them, so the palette is consistent across every page automatically.

## Components (inherited, re-toned)

Buttons, cards, stat callouts, section labels, dividers — all carry from Round 1
structurally; only the tokens changed. `h1/h2` are now all-caps Windrush; `h3/h4`
stay Work Sans for legibility.

## Many-tongues motif (Round 2 decision 4)

A symbolic recognition of the diversity of mother tongues across BMHWA's communities —
**not** a translated/parallel site. Implemented on the home page (`index.astro`,
`.tongues` band) as a dark band listing language **autonyms** (English, Kiswahili,
Yorùbá, Twi, Soomaali, Igbo, አማርኛ, العربية, Patois, Français, Português, Lingála).

> **Open / needs sign-off:** listing language *names* is low-risk and accurate. Adding a
> short translated *phrase* per language (e.g. a greeting) would be stronger but needs
> **community / steering verification** before going live — translation errors here are
> costly (cf. the earlier Somali/Amharic mix-up). Route any phrase content through Ariel.

## Windrush register — casing sets the voice (added 6 Jul 2026)

BC Empire Windrush carries both cases, and the casing is a deliberate register lever:

| Register | Casing | Voice | Where |
|----------|--------|-------|-------|
| **Authority** (default) | ALL-CAPS (`text-transform: uppercase`) | Demand. The manifesto's political weight — Emory Douglas / hull-lettering force. | Home, manifesto, case-for-change, take-action, about, news, press |
| **Learning** | Sentence case | Invitation. Warm, approachable — "come and use this," not "we demand." | Evidence library, Learning hub, Assess & Align |

Same face, two voices. The demand pages shout in caps; the tools that help
organisations *do the work* speak in sentence case. Do not mix them within a page.

**Mechanism.** `h1/h2` are uppercase by default in `global.css`. Learning pages opt
into sentence case with `<Base register="learning">`, which stamps `body.register-learning`
and lifts the transform. Eyebrow labels (`.section-label`) stay uppercase in **both**
registers — they're labels, not headings. Assess & Align (separate Next.js app) achieves
the same by simply not applying an uppercase transform to its Windrush headings.

## Type scale

Root `17.5px`. Headings: `h1` `clamp(3rem, 8vw, 6rem)`, `h2` `clamp(2.1rem, 5vw, 3.6rem)`,
`h3` `clamp(1.4rem, 2.8vw, 1.85rem)`. The **home hero h1** is deliberately larger —
`clamp(3.5rem, 13vw, 10rem)`, line-height `0.92` — "the size of a ship" (Rob, 19 Jun),
true to Windrush being cut from the ship's hull lettering. Interior page heroes inherit
the standard `h1` scale (smaller than home) — intentional hierarchy.

## Accessibility rule

Gold (`--accent`) as **small text on light backgrounds fails WCAG AA** (~2.2:1). Use gold
only for accents on **dark** surfaces (6:1) or as fills. On light backgrounds, small
emphasis text (eyebrows, card links) uses **demand-red** (`--urgent`, 4.76:1 on cream).

## Rollout status

- **Done (19 Jun 2026):** design tokens + font wired in `global.css`; type scaled up;
  **home page recomposed** (ship-scale hero + many-tongues band); **all 7 interior pages
  rolled out** — their `.page-hero`/`.manifesto-hero` blocks all use the shared dark
  `--primary` + white-heading pattern, so they inherit the new palette, Windrush display
  face, and ship-scale headings automatically. Press-kit colour swatches updated to the
  new palette. Stale Round-1 system marked superseded.
- **Verified:** all 9 pages build + serve 200; no old-palette hex remains in `src/`;
  `.nojekyll` regenerates from `public/` on every build.
- **Not done:** live publish (awaiting visual sign-off); optional verified per-language
  greeting in the many-tongues band (needs Ariel/community sign-off).
