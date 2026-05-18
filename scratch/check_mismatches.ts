
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config({ path: '.env.production' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl!, supabaseKey!);

async function findMismatches() {
    console.log('--- Checking for ID mismatches between services and projects ---');
    
    // 1. Get some services
    const { data: servicos } = await supabase.from('servicos').select('empreendimento_id, tipo').limit(100);
    
    if (servicos) {
        const uniqueEmpIds = Array.from(new Set(servicos.map(s => s.empreendimento_id))).filter(Boolean);
        console.log(`Checking ${uniqueEmpIds.length} unique empreendimento_ids from services table...`);

        // 2. See if they exist in empreendimentos table
        const { data: emps } = await supabase.from('empreendimentos').select('id, nome, codigo').in('id', uniqueEmpIds);
        
        console.log(`Found ${emps?.length || 0} matching empreendimentos for these services.`);

        if (emps && emps.length < uniqueEmpIds.length) {
            console.log('Mismatches found! Some services refer to projects that don\'t exist with that ID.');
            const foundIds = new Set(emps.map(e => e.id));
            const missingIds = uniqueEmpIds.filter(id => !foundIds.has(id));
            console.log('Missing project IDs from services:', missingIds.slice(0, 5));
        }
    }
}

findMismatches().catch(console.error);
