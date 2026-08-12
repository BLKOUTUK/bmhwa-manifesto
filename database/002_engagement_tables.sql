-- BMHWA engagement tables — newsletter signups, pledges, endorsements.
-- Home: the Alliance's own Supabase project (ppinqszzvtuxrzbbgxtg / BMHManifesto).
-- Design rule: INSERT-ONLY for the anon key. The public site can add rows;
-- nobody can read them without the service key. Reading the lists is done
-- from the Supabase dashboard (Table Editor) or an authenticated export.

create table if not exists public.bmhwa_newsletter_signups (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name text,
  email text not null,
  source text
);

create table if not exists public.bmhwa_pledges (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name text not null,
  email text not null,
  source text
);

create table if not exists public.bmhwa_endorsements (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  org_name text not null,
  contact text not null,
  email text not null,
  source text
);

alter table public.bmhwa_newsletter_signups enable row level security;
alter table public.bmhwa_pledges enable row level security;
alter table public.bmhwa_endorsements enable row level security;

drop policy if exists "anon can sign up" on public.bmhwa_newsletter_signups;
create policy "anon can sign up" on public.bmhwa_newsletter_signups
  for insert to anon with check (true);

drop policy if exists "anon can pledge" on public.bmhwa_pledges;
create policy "anon can pledge" on public.bmhwa_pledges
  for insert to anon with check (true);

drop policy if exists "anon can endorse" on public.bmhwa_endorsements;
create policy "anon can endorse" on public.bmhwa_endorsements
  for insert to anon with check (true);
