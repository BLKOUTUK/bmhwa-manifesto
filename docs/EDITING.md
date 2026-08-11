# Keeping the manifesto site current — an editing guide

**For the Black Mental Health & Wellbeing Alliance** · August 2026

This guide shows you how to update the manifesto website yourself — no developer, no
software to install, nothing to pay for. Everything happens in a web browser, and the
site republishes itself about two minutes after you save a change.

**Source of truth:** this guide lives at `docs/EDITING.md` in the site's code
repository. If a printed or emailed copy disagrees with that file, the file wins.

---

## The one idea

The website is built from a folder of files kept on GitHub (a free service where the
site is also hosted, at no cost — there is no Wix and no hosting bill). When anyone
saves a change to those files, the site rebuilds and publishes itself automatically.

So editing the site means: **open the file → edit → save ("commit") → wait two
minutes → refresh the live page.**

You cannot break anything permanently. Every version of every file is kept forever,
so any change can be wound back. If a saved change contains a typo the system cannot
build from, the site simply stays as it was — visitors never see an error.

## Getting access (one-time)

1. Create a free account at github.com.
2. Send your username to the site's current administrator — today that is Rob
   Berkeley (rob@blkoutuk.com) — and you'll be added as an editor.
3. The site's files live at **github.com/BLKOUTUK/bmhwa-manifesto**. (When the
   Alliance takes ownership of the code, this address will change and this guide
   will be updated to match.)

## Editing a page

1. Go to the repository and open the folder **src/pages**. Each file is one page of
   the site:

   | File | Page |
   |---|---|
   | index.astro | Home |
   | manifesto.astro | The Manifesto |
   | case-for-change.astro | The Case for Change |
   | take-action.astro | Take Action |
   | learning.astro | Learning & Capacity Building |
   | evidence.astro | Evidence Library (layout only — entries live elsewhere, see below) |
   | about.astro | About the Alliance |
   | news.astro | News |
   | press.astro | Press |
   | privacy.astro | Privacy Policy |

2. Open the file and click the **pencil icon** (top right, "Edit this file").
3. Change the words. Two rules keep you safe:
   - **Edit only the text between tags.** Anything wrapped in angle brackets, like
     `<h2>` or `</p>`, or in curly braces, like `{base}`, is machinery — leave it
     exactly as it is.
   - **Type normally.** Sentence case is right — the design capitalises headings by
     itself. Plain apostrophes and quotes are fine. One habit to copy: the files
     spell the ampersand as `&amp;` — do the same when your text needs an &.
4. Click the green **Commit changes** button, add a one-line note saying what you
   changed (for example "Updated the About page contact details"), and confirm.
5. Wait two minutes, then refresh the live page. Done.

To check a change went out: the repository's **Actions** tab shows a green tick when
the rebuild succeeded. A red cross means the change didn't publish (usually a stray
deleted bracket) — the live site is unaffected; open your file's **History**, spot
the mistake, and edit again, or ask for help.

## Adding to the Evidence Library

The library's 117 entries live in one file: **src/data/evidence.json**. Each entry
looks like this:

    {
      "org": "NHS Providers",
      "title": "Trusts tackling inequalities as Black people almost four times more likely to be detained",
      "summary": "One or two plain-language sentences saying what the source shows.",
      "means": "One sentence on what an organisation can do with it.",
      "url": "https://example.org/the-source",
      "topics": ["Detention & the Mental Health Act"],
      "status": "verified"
    },

To add an entry: edit the file, copy an existing entry from `{` to `},`, paste it
where you want it, and change the details. Watch the commas — every entry ends with
`},` except the very last in the file, which ends with `}`. If you get this wrong
the site simply doesn't update (see Actions tab above) — nothing is harmed.

Three fields to treat with care:

- **topics** — the first topic decides which group the entry appears under. Reuse an
  existing group name (there are 16; copy the spelling exactly from another entry).
  A new name creates a new group.
- **status** — write `"verified"` only when a human has opened the link and checked
  the summary is true to the source. Otherwise write `"manual-check"` and the site
  will show an honest "check pending" badge.
- **start_here** — ten entries carry `"start_here": true` and are pinned as the
  curated front door. That list is an editorial decision — change it deliberately,
  not casually.

## Images

Add images to **public/images**. Keep filenames lowercase with hyphens
(`community-event.jpg`, never `My Photo.PNG`) and keep files small — under about
300KB. Photographs of real people need their consent for use on the site.

## What not to touch

These folders are the site's engine, not its content: **src/layouts**,
**src/styles**, **src/data** (other than evidence.json), **public/fonts**,
**.github**, and the files ending **.config.mjs** or **package*.json**. If a change
seems to need them, that's a support conversation, not an edit.

## The design, in one breath

Two voices, one palette. Campaign pages (Manifesto, The Case, Take Action) sit on
deep brown-black with gold flashes — the demand voice. Learning pages (Learning,
Evidence Library, Assess & Align) lead gold with brown-black flashes — the
invitation voice. Headings are always capitals; the system does this for you. And
one hard rule inherited from accessibility testing: never put white text on gold.

## Assess & Align

The tool lives in its own repository (**github.com/BLKOUTUK/align**) and publishes
itself the same way. Its question wording sits in `lib/questions.js` — but a copy of
the question list also lives inside the AI second-reader service and the two must
change together, so treat question changes as a support conversation the first time.

## Newsletter signups

The footer signup form currently stores addresses in a database held by BLKOUT.
Until this moves to an Alliance-controlled home (part of the handover plan), email
rob@blkoutuk.com for an export at any time.

## Taking ownership — the handover setup

Everything above works today with BLKOUT holding the keys. This section is the plan
for the Alliance to hold them instead. None of it costs anything. Each step is done
together — Rob alongside whoever takes this on — and ticked off once verified.

### GitHub (the site's home)

1. **Create an Alliance organisation** at github.com — an organisation, not a
   personal account, so the site never depends on one person's login. Give at least
   **two named people** owner access. (The Alliance has lived the one-person-login
   problem before; this is the fix.)
2. **Rob transfers both repositories** into the organisation: the site
   (bmhwa-manifesto) and Assess & Align (align). GitHub redirects the old links
   automatically.
3. **Verify publishing still works**: make a small test edit, watch the Actions tab
   go green, see it live. (Repository settings usually survive a transfer; this
   check proves it.)
4. **Add editors** as organisation members. Owners approve access; editors edit.

### The public address (leaving Wix)

The new site is hosted free on GitHub Pages — **Wix is not involved and never will
be**. The only thing Wix currently holds is the old site and (probably) the domain
name. At go-live:

1. Confirm who holds the Wix account login and the domain registration.
2. In the site repository's settings, attach the custom domain; at the registrar,
   point the domain at GitHub (two DNS records — done together, takes minutes,
   free). Assess & Align gets its own address the same way (e.g.
   align.bmhwa.co.uk). Rob makes the site's matching one-time config change.
3. Once the domain shows the new site, **cancel the Wix subscription**. The only
   remaining cost anywhere is the domain registration itself (roughly £10–20 a
   year). If the domain is registered *through* Wix, transfer it out to a plain
   registrar first so cancelling Wix can't touch it.

### Supabase (where signups live)

Supabase is the free database service behind the footer's newsletter signup form.
Today, signups land in a BLKOUT-held database — that must move.

1. **The Alliance sets up its own free Supabase account** — again with credentials
   held by two people, on an Alliance email. (An Alliance project already exists
   from the 2026 feasibility work; it can be revived, or a fresh one created —
   whichever is cleaner on the day.)
2. **Together with Rob**: create the signups table with the same safety rule the
   current one has — the public form can *add* an address but can never *read* the
   list — then point the site's form at the new database, and copy across every
   address collected so far.
3. **Verify with a real test**: submit a signup on the live site, watch it arrive
   in the Alliance's own dashboard.
4. **Know the one free-tier catch**: free Supabase projects pause themselves after
   long inactivity, and a paused project silently stops collecting signups. Signup
   traffic itself keeps it awake, but put a monthly calendar note in someone's
   diary: open the dashboard, confirm the project is active, export the latest
   addresses. Reading the list is the same dashboard — Table Editor → export CSV.

### What stays with BLKOUT, by agreement

Two services remain BLKOUT-supported as ongoing solidarity, documented rather than
transferred: the monthly evidence-library refresh, and the unlisted AI second-reader
behind Assess & Align. The site works fully without either — losing them degrades
nothing that a human editor can't do by hand with this guide.

## Help

Something unclear, or a change you're not sure how to make safely:
**rob@blkoutuk.com**. BLKOUT built this site in solidarity with the Alliance and
remains on hand while the Alliance takes the controls.
