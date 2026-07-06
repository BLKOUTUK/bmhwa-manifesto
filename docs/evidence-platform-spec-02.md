# Evidence Platform — Spec 02: Distribution + AI Second-Reader (demo)

**Decided by Rob, 6 Jul 2026** (interview log below). Follows Spec 01 (library + tool live) and 01a (usability). Nothing outside this spec ships under it.

## Decision log (verified with Rob)

| Decision | Choice | What it rules out |
|---|---|---|
| Distribution mode this quarter | **Route through Ariel/Alliance** — steering committee circulates through BMHWA channels; distribution arrives with Alliance ownership built in | BLKOUT-channel push to a draft site; a BLKOUT-branded quiet pilot; holding until public launch |
| First cohort | **Ariel + steering contacts, and Alliance member orgs** | Mining BLKOUT's CRM; Rob's direct contacts as the primary route |
| Front door | **Keep github.io for the draft phase** — invites travel as clickable links; real domain decided with the Alliance at public launch | blkoutuk.com redirect or .cloud subdomain (would put BLKOUT's name on the front door of Alliance work) |
| Second-reader depth | **Working, unlisted** — real Supabase Edge Function + consent screen, reachable only by direct URL; live demo at the Alliance AI-alignment discussion; NOT linked from /align until that conversation has happened | Scripted/slide demo; shipping it linked before the Alliance discussion |

## Part A — Distribution via the Alliance

The vehicle is the group feedback round already owed to the steering committee (Ariel thread, next step since 5 Jul). The distribution ask rides with it.

### Scope
1. **Covering note to Ariel** — asks her to open the group feedback round and to circulate the forwardable note to member orgs; includes the languages-acknowledgment question going to the group on its own terms (carried over from 5 Jul).
2. **Forwardable circulation note** — short, plain-language, steering members can send to Alliance member orgs as-is: what the evidence library and Assess & Align are, the two links, and the ask — *use it for a real bid, commissioning decision, or research request, and tell us what happened*.
3. **Feedback capture stays manual** — replies route to rob@blkoutuk.com via Ariel. No new form (Mechanism C stays parked).

**Not in Part A:** BLKOUT newsletter/LinkedIn promotion, custom domain, public launch, the withheld platform name, Survey B.

### Done-checks (Part A)
- [ ] Covering note + forwardable note drafted and shown to Rob before anything is sent (sending is Rob's call, on his thread with Ariel).
- [ ] Every URL in both notes returns 200 at draft time; both use the draft-labelled framing; zero occurrences of the withheld name.
- [ ] The forwardable note contains the "real use" ask explicitly (bid / commissioning / research request + tell us what happened).
- [ ] Register check against blkout-voice: invitation from a peer, not a vendor pitch; Alliance's thing, not BLKOUT's.

**Measure (beyond this session):** by end of September, ≥3 member orgs report a real use. Tracked on the Ariel thread.

## Part B — AI second-reader (working, unlisted)

Paste a research request → AI answers the same 10 Assess & Align questions alongside the human's answers, divergence visible. Demo at the Alliance AI-alignment discussion; **do not link it from /align** before that discussion.

### Scope
1. **Supabase Edge Function** `align-second-reader` on the main project `bgjengudzfickgomjqmz` (BMHWA project is paused): accepts pasted proposal text, returns per-question `{id, value (green/amber/red/notstated), rationale}` for all 10 questions. No database writes — ephemeral processing only. CORS locked to blkoutuk.github.io. Model served via OpenRouter (key already held); exact model recorded in the function source.
2. **Unlisted page** in `~/assess-align` (e.g. `/second-reader`): not linked from nav, landing, or results. Flow: consent screen (nothing proceeds without explicit opt-in; copy states the pasted text is sent to an AI model for processing and is not stored) → paste box → side-by-side table of human answers (from sessionStorage) vs AI answers, per-question, divergences visually flagged, AI rationale shown per question. If no human answers exist, invite the user to complete the assessment first.
3. **One realistic end-to-end test** with a sample research request, before demo.

**Not in Part B:** linking from any navigation, storing submissions, analytics, batch processing, the withheld name, shipping ahead of the Alliance discussion.

### Done-checks (Part B)
- [ ] No network request fires before the consent box is ticked (verified in devtools).
- [ ] Consent copy states: sent to an AI model for processing, not stored, opt-in only.
- [ ] Edge function makes zero database writes; returns all 10 questions with value + grounded rationale.
- [ ] Divergence between human and AI answers is visually flagged per question.
- [ ] Built site (`out/`) contains no link to the second-reader page from any linked page (automated grep).
- [ ] End-to-end test with a realistic research request completes and reads sensibly.
- [ ] Second-AI review of page + function (ship / ship-with-fixes / block).
- [ ] Rob previews the working page before deploy; deployed via GH Actions; live URL verified with cache-buster polls.

## Format precedent

Spec 01 pipeline: spec file → build → second-AI review → preview gate → deploy → live verify. Same discipline, same order.

## Next specs (queued, not started)

- Spec 03: verification-at-scale for the remaining ~130 screened candidates + start-here tier.
- Spec 04: Alliance governance package (naming, ownership, editorial rota) — gates public launch.
