# The Alliance Evidence Platform — groundwork note

**Working title.** "The Burke Platform" is the *proposed* name, used inside this note only — it does not go on any public surface, announcement, or bid until the Burke family has been approached and has given their blessing (question 1 below). The draft site copy uses the neutral framing "an evidence platform for Black civil society".

**Status:** Working paper to anchor the Alliance's AI-alignment discussion (the agreed next step after the group feedback round). Not a spec, not a funding bid. Drafted July 2026 by BLKOUT for the Black Mental Health & Wellbeing Alliance.

---

## 1. The name, and what it inherits

**Dr Aggrey Burke FRCPsych (1943–2025)** was the first Black consultant psychiatrist appointed by the NHS. Born in Saint Elizabeth, Jamaica, he spent most of his career at St George's, Tooting, building the field of transcultural psychiatry in Britain. His work is a model of evidence used in service of justice:

- His 1986 *Medical Education* paper with Joe Collier demonstrated racial and sexual discrimination in London medical school admissions — triggering a Commission for Racial Equality enquiry and real changes to admissions processes.
- He was among the first clinicians to challenge the disproportionate detention of Black men in secure mental health settings, decades before the sector caught up.
- Named among the 100 Great Black Britons (2020); the Royal College of Psychiatrists launched the **Aggrey Burke Fellowship** in 2023 to support Black medical students into psychiatry.

Dr Burke died on 21 December 2025. Naming the platform for him is a statement of intent: he showed that rigorous evidence, held by people who belong to the community it describes, changes institutions. The platform exists to put that same power in the hands of Black-led organisations.

> **The Burke family has not yet been approached.** The name currently appears only on the draft redesign site (not yet public — the live BMHWA site remains the Wix original). Sequencing: the family conversation happens before the redesign launches or the name travels anywhere public (announcements, bids, press). Possible routes to the family: St George's (which published a tribute), the RCPsych Aggrey Burke Fellowship, or Alliance members with a personal connection.

The platform also draws on the evidence legacy of the **Synergi Collaborative Centre** (2017–, founded with Lankelly Chase funding, directed by Prof Kamaldeep Bhui; QMUL, University of Manchester, Words of Colour Productions) — the national programme on ethnic inequalities in severe mental illness whose evidence base underpins much of the manifesto's case. Synergi's second phase, now hosted elsewhere, has taken a more reactive direction: the original centre's evidence-synthesis function has not been carried forward. **The gap Synergi was created to close has reopened** — and no national actor currently holds that function. That is the strategic opening the Burke Platform steps into: not building alongside a living programme, but picking up a function the sector has dropped.

> Framing note: this is an inheritance of **creation** — what Burke and Synergi built and made possible — not a memorial. Copy should carry that register.

## 2. The problem it answers

The evidence Black-led organisations need — for commissioning arguments, funding bids, service design, campaigning — largely exists. It sits behind journal paywalls, in academic language, scattered across programmes that have ended. Meanwhile those same organisations are constantly asked to *supply* data to researchers (the extraction problem Assess & Align addresses).

This is the "data invisibility as political problem" reframe: communities aren't short of experience or evidence; they're denied usable access to it. And with Synergi's evidence-synthesis function no longer being carried forward, there is no national infrastructure holding this at all. The Burke Platform is the access layer — and, increasingly, the only candidate for one.

## 3. The vision (as published)

> A single place where Black-led organisations can find, understand, and apply the evidence that matters to their communities — without needing to navigate paywalled journals or decode academic language.

## 4. What already exists to build on

| Asset | State | Relevance |
|---|---|---|
| **Assess & Align** | Built and live at blkoutuk.github.io/align — 10-question, 5-dimension assessment of research partnership requests, with a generated feedback letter | The other half of the same politics: Assess & Align governs evidence flowing *out* of communities; Burke governs evidence flowing *in*. Natural pairing on the Learning page |
| Manifesto site + Supabase | Live, in active Round 2 development | Home for a Phase 1 evidence library; signup/data patterns already proven |
| Data dashboard (Round 2, Phase 2) | Agreed: monthly refresh, semi-automated via NotebookLM + data agent, newsletter factoid cadence | The same corpus + refresh pattern the Burke Platform needs — build once, serve both |
| BLKOUT's AI experience | IVOR (community AI assistant), NotebookLM workflows, Supabase RAG patterns | The technical path for Phase 2 is already trodden in-house |
| Newsletter cadence | BMHWA newsletter live | Forcing function that keeps a curated library from going stale |

## 5. What it is — and is not

**Is:** curated, provenance-first (every claim traceable to a cited source), plain-language alongside the original, community-stewarded, built within our means on infrastructure the Alliance can own.

**Is not:** a chatbot performing clinical expertise; a substitute for services or advice; a scraper of paywalled content; an "AI product" whose answers can't be checked. If a feature can't show its sources, it doesn't ship.

## 6. A phased path

**Phase 0 — alignment and audit (now).**
The Alliance discussion this note anchors, plus a corpus audit: what is actually available to build on — Synergi's open outputs (rights status to confirm; legacy site material), the manifesto's own evidence base, open-access literature, members' grey literature (evaluations, reports that never got published). No build until this is done.

*Audit and first screening done 6 Jul 2026:* **329 unique sources** exist across four BLKOUT NotebookLM notebooks (Black Men's Mental Health brief, Critical Frequency, UK Men/Black/LGBTQ+ MH brief, CF Fundraising). Every URL link-checked; every source categorised and topic-tagged — screened inventory at `docs/burke-corpus-screened.csv`. Results:

- **176 library candidates** — live, relevant external evidence. Strongest clusters: LGBTQ+/queer men's health (43), academic research evidence (19), policy & commissioning (14), population data & census (11), Black-led orgs & funding (10+), race equity in services / PCREF (8), Synergi legacy, sector reports, community interventions.
- **68 internal working documents** (Google Docs/markdown) and **6 own outputs** — not library material.
- **38 excluded** — deep-research drift (US health-financing vendors, off-topic news, listicles). Machine-gathered corpora need this pass.
- **31 dead links** to re-find or drop; **9 US-context sources** for an editorial call.
- **1 flagged**: an LGB Alliance page — an organisation whose anti-trans positioning conflicts with the Alliance's intersectionality stance; recommend removal from the source notebooks, not just exclusion here.

Remaining audit work: editorial confirmation of the screen, tagging against manifesto recommendations, and the Synergi rights question.

**Phase 1 — the library (no AI required to launch).**
A curated evidence library on the manifesto site: each entry a source + a plain-language summary + "what this means for your organisation". Human-stewarded, refreshed on the newsletter cadence, sharing the dashboard's monthly data pattern. This is genuinely useful on day one and is the corpus Phase 2 needs anyway.

**Phase 2 — ask the evidence.**
Question-answering over the Phase 1 corpus (retrieval with citations — the IVOR pattern). Answers always link to the underlying sources. This is the point at which "AI-powered" becomes literal, and it only happens on terms the Phase 0 discussion has set.

**Phase 3 — close the loop with Assess & Align.**
An organisation evaluating a research request can pull the existing evidence on that topic ("has this already been studied? what did the community get last time?"); researchers receiving feedback can be pointed to the evidence standard expected. One politics, two directions.

## 7. Questions for the Alliance discussion

1. **The name.** The Burke family has not been approached. The name is only on the draft site so far — but the family conversation needs to conclude before the redesign launches with it. Who holds a route to the family, and who makes the approach? (This precedes everything.)
2. **Ownership and stewardship.** Whose platform is this — the Alliance's? Where does it live (domain, repo, data)? Who signs off content? (Assess & Align currently sits on BLKOUT's GitHub — fine for a build, a decision for a launch.)
3. **Ethics in the open.** There are no formal red lines on AI — and that is the point of the conversation. As values-led organisations, the Alliance's ethics need to be articulated in the open rather than assumed. The working hypothesis: **data management and dissemination are outcomes we hope to find an ethical means of working with, in order to generate benefits for our missions.** The alignment discussion is where that hypothesis gets tested and given shape — what ethical practice looks like for holding community-relevant evidence, and for putting it into people's hands.
4. **The Synergi corpus.** The current hosting of Synergi's second phase is not carrying the evidence function forward, so the relationship that matters is with the original body of work. **Rob approaches Prof Kam Bhui directly** — the corpus, its rights status, and his blessing for the platform to carry the evidence-synthesis inheritance.
5. **Stewardship capacity.** Phase 1 needs a human editorial function. Who, and funded how? (Candidate for a future bid once Phase 1 has something to show — pilot first.)
6. **Launch sequencing with Assess & Align.** The assessment tool is built and quietly live; the Learning page still says "in development". Announcing Assess & Align as the Alliance's first shipped tool is the natural proof-point that makes the Burke Platform vision credible.

## 8. Within our means

Phase 0–1 costs are editorial time, not infrastructure — the manifesto site and Supabase already exist. Phase 2 adds modest inference costs (comparable to IVOR's running costs). Nothing here requires new funding to start; Phase 1 shipped well is what makes a funding ask for stewardship capacity concrete rather than speculative.

---

*Sources for §1: [Wikipedia — Aggrey Burke](https://en.wikipedia.org/wiki/Aggrey_Burke) · [City St George's tribute](https://www.citystgeorges.ac.uk/news-and-events/news/2026/january/remembering-dr-aggrey-burke-frcpsych-1943-2025) · [SWLSTG tribute](https://swlstg.nhs.uk/latest-news/a-tribute-to-dr-aggrey-burke-2907) · [Synergi Collaborative Centre](https://synergicollaborativecentre.co.uk/) · [Lankelly Chase on Synergi's new vision](https://lankellychase.org.uk/news/award-winning-synergi-collaborative-centre-will-today-announce-a-new-vision-and-leadership-prioritising-racial-justice-in-mental-health-and-coalition-building/) · [NSUN hosting Synergi Phase 2](https://www.nsun.org.uk/news/nsun-catalyst4change-to-host-synergi-phase2/)*
