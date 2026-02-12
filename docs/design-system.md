# Design System — Black Mental Health Manifesto

**Status**: Proposed (pending steering committee feedback from survey Q14)

## Design Context

This is a **coalition manifesto**, not a single-org brand. The design must:
- Project **authority** — policy audiences take it seriously
- Feel **urgent** — this is a demand for change, not a suggestion
- Remain **warm** — centred in community, not bureaucratic
- Allow **multiple organisations** to see themselves in it

## Colour Palette

```
Primary:     #1B1B3A  Deep indigo-black — authority, depth
Accent:      #E8A838  Warm gold — warmth, value, Pan-African resonance
Urgent:      #C0392B  Deep red — urgency without alarm
Text:        #2D2D2D  Near-black — readable, warm
Light bg:    #FBF8F3  Warm white — softer than pure white
Card bg:     #FFFFFF  White — clean content areas
Muted:       #6B7280  Gray — secondary text, captions
```

### Why this palette

The current site uses NHS blue (#0057E1). This unconsciously aligns the manifesto with the institution it's critiquing. Moving to deep indigo-black + warm gold creates authority with warmth — the manifesto stands on its own, independent of NHS branding.

The warm gold carries Pan-African resonance without being literal. It says "value" and "worth" — which is what the manifesto is ultimately about.

### Contrast ratios (WCAG AA)

| Combination | Ratio | Pass |
|------------|-------|------|
| #2D2D2D on #FBF8F3 | 12.6:1 | AAA |
| #FFFFFF on #1B1B3A | 15.3:1 | AAA |
| #E8A838 on #1B1B3A | 6.2:1 | AA |
| #C0392B on #FBF8F3 | 5.8:1 | AA |
| #6B7280 on #FFFFFF | 5.0:1 | AA |

## Typography

```
Headlines:    DM Serif Display
              Weight: 400 (regular)
              Use: Page titles, section headers, key demands
              Uppercase: Sparingly — for key demands only

Body:         Work Sans
              Weights: 400 (regular), 500 (medium), 600 (semibold)
              Use: All body text, form labels, navigation
              Line height: 1.6 for body, 1.3 for headings

Data/Stats:   Space Grotesk
              Weights: 500 (medium), 700 (bold)
              Use: Statistics, numbers, data visualisations
              Purpose: Modern, technical feel for evidence-based content
```

### Font loading

All three families are available via Google Fonts. Load with `display=swap` to prevent invisible text during loading:

```html
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display&family=Work+Sans:wght@400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
```

### Fallback stack

```css
--font-heading: 'DM Serif Display', Georgia, 'Times New Roman', serif;
--font-body: 'Work Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
--font-data: 'Space Grotesk', 'SF Mono', 'Fira Code', monospace;
```

For maximum accessibility, Atkinson Hyperlegible can be offered as an alternative body font (designed specifically for legibility by the Braille Institute).

## Design Principles

1. **Data as evidence, not decoration**: Every statistic earns its place. No decorative charts.
2. **The manifesto text is the hero**: Design serves the words, not the other way round.
3. **Progressive disclosure**: Don't overwhelm. Summary → detail → action.
4. **Shareable by design**: Every section has a share button. Key stats formatted as social cards.
5. **Accessible**: WCAG AA minimum. Proper heading hierarchy. Alt text on all images. Keyboard navigable.
6. **Mobile-first**: Policy audiences read on phones too. Especially MPs' staffers.

## Component Patterns

### Cards
- White (`#FFFFFF`) on warm white (`#FBF8F3`) background
- Subtle shadow: `0 1px 3px rgba(0,0,0,0.1)`
- Border-radius: `8px`
- Padding: `24px` (desktop), `16px` (mobile)

### Buttons
- **Primary**: `#E8A838` background, `#1B1B3A` text, bold
- **Secondary**: `#1B1B3A` background, `#FFFFFF` text
- **Urgent**: `#C0392B` background, `#FFFFFF` text
- Border-radius: `6px`
- Padding: `12px 24px`

### Statistics
- Large number in Space Grotesk 700, `#1B1B3A`
- Context text in Work Sans 400, `#6B7280`
- Gold accent line or border for emphasis

### Section Headers
- DM Serif Display, `#1B1B3A`
- Optional gold underline accent
- Clear hierarchy: h1 > h2 > h3

## Spacing Scale

```
4px   — tight (icon gaps)
8px   — compact (label spacing)
16px  — base (paragraph spacing)
24px  — comfortable (card padding)
32px  — section gaps (mobile)
48px  — section gaps (desktop)
64px  — major section breaks
```

## Breakpoints

```
Mobile:   < 640px
Tablet:   640px — 1024px
Desktop:  > 1024px
```

Content max-width: `1200px` with `auto` margins.
