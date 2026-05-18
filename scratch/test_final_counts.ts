
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';
import { getEmpreendimentos } from '../src/lib/api-client';

dotenv.config({ path: '.env.production' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl!, supabaseKey!);

async function testFinalCounts() {
    console.log('--- Testing Final getEmpreendimentos Counts ---');
    
    // getEmpreendimentos is cached, so it should be fast
    const result = await getEmpreendimentos(supabase as any, {
        page: 1,
        pageSize: 10
    });

    console.log(`Ambiental Count: ${result.ambientaisCount}`);
    console.log(`Desaprop Count: ${result.desapropCount}`);
    console.log(`Total Count: ${result.count}`);
}

testFinalCounts().catch(console.error);
