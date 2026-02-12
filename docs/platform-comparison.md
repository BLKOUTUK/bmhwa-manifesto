# Platform Comparison

**Decision depends on**: Steering committee survey Q12 (tech comfort) and Q13 (budget)

## Options

### Option A: Webflow (Recommended if budget allows)

| Factor | Detail |
|--------|--------|
| **Cost** | ~£15-20/month (Basic or CMS plan) |
| **SEO** | Server-rendered, excellent |
| **Editor experience** | Visual editor, drag-and-drop, similar to Wix but better output |
| **CMS** | Built-in, handles blog/news/events |
| **Hosting** | Included, SSL, CDN, no maintenance |
| **Maintenance** | None — no plugins, no security patches |
| **Training** | ~1 hour to get confident with content updates |
| **Best for** | Teams comfortable with visual editors, some budget available |

**Pros**: Easiest ongoing maintenance, professional output, no technical debt
**Cons**: Monthly cost, less flexible than code-based options

### Option B: Astro + Decap CMS on Netlify (if £0 budget)

| Factor | Detail |
|--------|--------|
| **Cost** | £0 (Netlify free tier: 100GB bandwidth/month) |
| **SEO** | Static HTML, perfect — fastest possible load times |
| **Editor experience** | Decap CMS provides a visual admin panel for content |
| **CMS** | Git-based, content stored as markdown files |
| **Hosting** | Netlify free tier, SSL, CDN included |
| **Maintenance** | Minimal — static site, no server, no database |
| **Training** | ~2 hours — admin panel is simple but less intuitive than Webflow |
| **Best for** | Zero budget, technically curious maintainer |

**Pros**: Completely free, blazing fast, version-controlled content
**Cons**: Less intuitive editor, requires initial technical setup, markdown-based

### Option C: WordPress (if specifically requested)

| Factor | Detail |
|--------|--------|
| **Cost** | ~£5-15/month (managed hosting) |
| **SEO** | Good with proper plugins (Yoast, RankMath) |
| **Editor experience** | Block editor (Gutenberg), very familiar to most people |
| **CMS** | Full-featured, handles any content type |
| **Hosting** | Separate (WP Engine, SiteGround, etc.) |
| **Maintenance** | Regular — plugin updates, security patches, backups |
| **Training** | ~1 hour — most people have seen WordPress before |
| **Best for** | Teams who want maximum flexibility and familiar interface |

**Pros**: Most flexible, huge ecosystem, familiar
**Cons**: Requires ongoing maintenance, plugin updates, security monitoring

## Comparison Matrix

| Feature | Webflow | Astro + Decap | WordPress |
|---------|---------|---------------|-----------|
| Annual cost | ~£200-240 | ~£10 (domain only) | ~£80-180 |
| SEO quality | Excellent | Perfect | Good (with plugins) |
| Load speed | Fast | Fastest | Variable |
| Editor friendliness | High | Medium | High |
| Maintenance burden | None | Low | Medium |
| Design flexibility | High | Highest | High (with themes) |
| Blog/news CMS | Built-in | Via Decap | Built-in |
| Forms | Built-in | Via Formspree/Netlify | Via plugins |
| Custom code | Limited | Full control | Via plugins/child themes |
| Accessibility | Good defaults | Full control | Depends on theme |

## Recommendation Logic

```
IF budget >= £200/year AND tech comfort = "visual editors"
  → Webflow (Option A)

IF budget = £0 AND any tech comfort level
  → Astro + Decap CMS (Option B)

IF they specifically want WordPress
  → WordPress with managed hosting (Option C)
```

## Domain Transfer

Regardless of platform, `bmhwa.co.uk` will need DNS changes:
- If domain is registered through Wix: may need to transfer out or update nameservers
- If domain is registered elsewhere: just update DNS records
- Technical survey Q4 will clarify this

**Timing**: Start DNS process in Week 5 (not Week 7) to allow propagation time.
