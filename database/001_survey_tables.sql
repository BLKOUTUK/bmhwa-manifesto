-- BMHWA Survey Response Tables
-- Run this in Supabase SQL Editor

-- =============================================
-- Steering Committee Survey (8 questions)
-- =============================================
CREATE TABLE steering_responses (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at timestamptz DEFAULT now(),

  -- Q1: Top 3 audiences (multi-select checkboxes)
  audiences text[] NOT NULL DEFAULT '{}',

  -- Q2: What should a first-time visitor understand within 30 seconds?
  first_impression text,

  -- Q3: What action do you most want visitors to take? (radio)
  desired_action text,
  desired_action_other text,

  -- Q4: Which features matter most? (multi-select checkboxes)
  important_features text[] NOT NULL DEFAULT '{}',

  -- Q5: Assess & Align status + integration preference (radio + textarea)
  assess_align_status text,
  assess_align_details text,

  -- Q6: Who will update the site? (radio + text followup)
  who_updates text,
  who_updates_name text,

  -- Q7: Site examples like/dislike (textarea)
  site_examples text,

  -- Q8: Anything else (textarea)
  anything_else text
);

-- =============================================
-- Technical Survey (16 questions, 4 sections)
-- =============================================
CREATE TABLE technical_responses (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at timestamptz DEFAULT now(),

  -- Section 1: Current Setup
  -- Q1: Who has site access? (radio + text)
  site_access text,
  site_editors text,

  -- Q2: How often updated? (radio + text)
  update_frequency text,
  update_types text,

  -- Q3: Wix plan/cost (radio + text)
  wix_plan text,
  who_pays text,

  -- Q4: Domain registrar (radio + text + text)
  domain_registrar text,
  domain_provider text,
  domain_access_person text,

  -- Q5: Email addresses (checkboxes + text)
  email_types text[] NOT NULL DEFAULT '{}',
  email_other text,

  -- Section 2: Communications & Tools
  -- Q6: Comms tools (checkboxes + text + text)
  comms_tools text[] NOT NULL DEFAULT '{}',
  comms_email_platform text,
  comms_social_tool text,

  -- Q7: Mailing list (radio + text + text)
  mailing_list text,
  mailing_list_other text,
  mailing_list_subscribers text,

  -- Q8: Social accounts (checkboxes + text + text)
  social_accounts text[] NOT NULL DEFAULT '{}',
  social_other text,
  social_manager text,

  -- Q9: File storage (radio + text)
  file_storage text,
  file_storage_other text,

  -- Q10: Pain points (checkboxes + text)
  pain_points text[] NOT NULL DEFAULT '{}',
  pain_points_other text,

  -- Section 3: Assess & Align
  -- Q11: A&A status (radio + text)
  assess_align_status text,
  assess_align_hosted text,

  -- Q12: Other digital tools (textarea)
  other_tools text,

  -- Q13: Website + A&A integration level (radio)
  assess_align_integration text,

  -- Section 4: Migration & Handover
  -- Q14: Content to remove (textarea)
  content_to_remove text,

  -- Q15: Existing integrations (checkboxes + text)
  existing_integrations text[] NOT NULL DEFAULT '{}',
  integrations_other text,

  -- Q16: Training needs (checkboxes + text)
  training_needs text[] NOT NULL DEFAULT '{}',
  training_other text
);

-- Enable RLS
ALTER TABLE steering_responses ENABLE ROW LEVEL SECURITY;
ALTER TABLE technical_responses ENABLE ROW LEVEL SECURITY;

-- Allow anonymous inserts (public survey)
CREATE POLICY "Allow anonymous insert" ON steering_responses
  FOR INSERT TO anon WITH CHECK (true);

CREATE POLICY "Allow anonymous insert" ON technical_responses
  FOR INSERT TO anon WITH CHECK (true);

-- Only authenticated users can read (admin)
CREATE POLICY "Allow authenticated read" ON steering_responses
  FOR SELECT TO authenticated USING (true);

CREATE POLICY "Allow authenticated read" ON technical_responses
  FOR SELECT TO authenticated USING (true);
