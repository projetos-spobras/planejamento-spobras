import { createClient } from "@supabase/supabase-js";

const SUPABASE_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk4NDcxODQsImV4cCI6MjA3NTQyMzE4NH0.ajfCswC3MDOWTEEEMC0JjCgeDnQzgUcnvCZYB0J2_ZU";

export const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);