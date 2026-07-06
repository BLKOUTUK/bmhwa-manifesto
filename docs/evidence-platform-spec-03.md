# Evidence Platform — Spec 03: Verification at Scale + Start-Here Tier

**Opened 6 Jul 2026** on Rob's direction: continue building the library. Follows Spec 01 (49 entries live) and Spec 02 (distribution + second-reader, gated on preview).

## Decision log

| Decision | Choice | What it rules out |
|---|---|---|
| Scope of this pass | **All 132 remaining library candidates** from `docs/burke-corpus-screened.csv`, processed in waves | Cherry-picking a top slice; waiting for more screening |
| Pipeline | **Same as Spec 01**: fetch source → Claude drafts entry → non-Anthropic model verifies summary + "means" line against fetched text → supported / corrected / cut | Unverified entries; self-review only |
| Start-here tier | **A pinned opening group of ~10 entries** — one per major topic, chosen for widest usefulness in bids and commissioning — shown before the topic groups | A separate page; algorithmic ranking |
| Kam / future sources | **Nothing Kam-specific built** — the pipeline is re-runnable, so later additions (his bibliography or anyone's) are routine, not a feature | Pre-empting his involvement in any way |
| The 6 manual-check entries from Spec 01 | **Re-attempt verification**; if still unverifiable, badge stays or entry is cut | Silent promotion to "verified" |

## Scope

1. Fetch all 132 remaining candidate sources; cache text (pdftotext for PDFs, extracted text for pages). Dead or paywalled sources drop out with a logged reason.
2. Draft entries (org, title, plain-language summary, "what this means for your organisation", topics mapped to the live display groups).
3. Cross-vendor verification of every drafted entry against its fetched source; corrected entries re-verified; unsupported entries cut.
4. Merge verified entries into `src/data/evidence.json` in waves (~40 at a time), keeping topic groups coherent.
5. Start-here tier on `/evidence/`: pinned "Start here" group, ~10 curated entries, before the topic groups.
6. Re-attempt the 6 Spec 01 manual-check entries.

**Not in this spec:** submissions, per-entry pages, analytics, public launch, the withheld name, any Kam-specific ingestion.

## Done-checks

- [ ] Every new entry: source fetched live (not hand-typed), URL 200 at fetch time, cross-vendor verdict "supported" — or visibly badged if held as manual-check.
- [ ] Zero numeric claims in any entry not present in its source text.
- [ ] Dropped candidates logged with reasons (dead link, paywall, verification cut) — no silent truncation.
- [ ] Start-here group renders first, ~10 entries, each also present in its topic group.
- [ ] Build passes; `dist/` greps clean for the withheld name; search + topic filters still work at ~150+ entries.
- [ ] Rob previews before deploy; deploy = rsync `dist/` → gh-pages; live verify with cache-buster.

## Format precedent

Spec 01: same pipeline, same discipline. URLs join from the screened inventory by exact key — never hand-typed, never fuzzy-repaired.
