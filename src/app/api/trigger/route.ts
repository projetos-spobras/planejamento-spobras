import { NextResponse } from 'next/server';
import { getEmpreendimentosSelectionList } from '@/lib/api-client';
import { createClient } from '@supabase/supabase-js';

export async function GET() {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://kuxryjfjbsmbhcjwgsgt.supabase.co';
    const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTk4NDcxODQsImV4cCI6MjA3NTQyMzE4NH0.ajfCswC3MDOWTEEEMC0JjCgeDnQzgUcnvCZYB0J2_ZU';
    const sb = createClient(supabaseUrl, supabaseKey);

    try {
        await getEmpreendimentosSelectionList(sb);
        return NextResponse.json({ success: true });
    } catch (e: any) {
        return NextResponse.json({ error: e.message });
    }
}
