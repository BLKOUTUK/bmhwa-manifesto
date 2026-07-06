# Evidence Platform — Spec 01: Library + Tool, Linked

**Decided by Rob, 6 Jul 2026** (interview log below). Small, compartmentalised, with explicit done-checks. Nothing outside this spec ships under it.

## Decision log (verified with Rob)

| Decision | Choice | What it rules out |
|---|---|---|
| Real goal, next 8 weeks | **Real users this year** — Black-led org leaders using the library for bids/commissioning by autumn; adoption is the metric | Building solely as a discussion artefact; positioning-first sequencing |
| First spec | **Library + Assess & Align, linked** — the two-halves story ships together | Shipping the library alone; holding everything for governance conversations |
| Editorial sign-off | **Second-AI verification against source + Rob spot-check** while draft-labelled; Alliance sign-off gates *public* launch, not drafts | Unverified AI-drafted entries reaching even the draft site |
| Where it lives | **Inside the manifesto site** at `/evidence/` — inherits design system, zero new infra, can migrate later | Standalone app this phase |

## Scope (this spec only)

1. `/evidence/` page on the manifesto site: ~44 entries (org, title, plain-language summary, "what this means for your organisation", citation link, topics), client-side search + topic filter, every entry visibly labelled with verification status.
2. Learning page: Assess & Align section updated from "in development" to linking the live tool (blkoutuk.github.io/align), and the evidence-platform section linking `/evidence/`.
3. Entry verification pipeline: fetch source → independent AI checks each summary and "means" line against the fetched text → verdict per entry (supported / corrected / cut) → Rob spot-checks a sample + any corrected entries.

**Not in this spec:** Q&A/AI features, submissions, per-entry pages, analytics, public launch, the platform name.

## Done-checks (all must pass)

- [ ] ≥40 entries live on the draft site, each: URL returns 200 at build time; second-AI verdict "supported"; verification status shown on the entry.
- [ ] Zero entries carrying numeric claims not present in their source.
- [ ] The three walkthrough jobs (bid, commissioner, research request) completable on a phone in under 60 seconds each, keyboard-accessible, content present without JS.
- [ ] Design-system conformance: Windrush display only for h1/h2; gold never small-on-light; no blue, no pure white (checked against `docs/round-2/03_design-system.md`).
- [ ] Learning page links to live Assess & Align; link verified 200 + correct content-type after deploy.
- [ ] Built page contains zero occurrences of the withheld platform name (automated grep of `dist/` before deploy).
- [ ] Second-AI review of the whole page (format precedent: the 19–20 Jun redesign review — verdict ship / ship-with-fixes / block).
- [ ] Rob has seen the page and the sample verification report before deploy.

## Format precedent

The June 2026 manifesto redesign run is the pipeline to match: design system doc → build → second-AI review ("ship-with-fixes, no blockers") → deploy via dist→gh-pages → verify live (200s, content-type, spot-render). Same discipline, same order.

## Next specs (queued, not started)

- Spec 02: distribution — how a real user finds this (the "real users this year" goal makes this the critical path after 01).
- Spec 03: verification-at-scale for the remaining ~130 screened candidates.
- Spec 04: Alliance governance package (naming, ownership, editorial rota) — gates public launch.
