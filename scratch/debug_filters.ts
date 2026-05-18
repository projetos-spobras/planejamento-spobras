
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';
import path from 'path';

// Load env vars
dotenv.config({ path: '.env.production' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase env vars');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugDesaprop() {
    console.log('--- Debugging Desapropriação Data ---');
    
    // 1. Check services with type 'Desapropriações' or similar
    // Using subtipo_receita instead of subtipo_desapropriacao
    const { count: totalCountInDb } = await supabase
        .from('servicos')
        .select('*', { count: 'exact', head: true });
        
    console.log(`Exact total count in 'servicos' table: ${totalCountInDb}`);

    const { data: servicos, error } = await supabase
        .from('servicos')
        .select('id, empreendimento_id, tipo, subtipo_ambiental, subtipo_receita, descricao')
        .range(0, 9999);

    if (error) {
        console.error('Error fetching services:', error);
        return;
    }

    console.log(`Total services in DB: ${servicos?.length || 0}`);

    const desapropServices = servicos?.filter(s => 
        (s.tipo && s.tipo.toLowerCase().includes('desaprop')) ||
        (s.subtipo_receita && s.subtipo_receita.some(sub => sub.toLowerCase().includes('desaprop') || sub.toLowerCase().includes('material exp')))
    );

    console.log(`Desaprop services found: ${desapropServices?.length || 0}`);
    
    if (desapropServices && desapropServices.length > 0) {
        console.log('Sample desaprop service:', JSON.stringify(desapropServices[0], null, 2));
    }

    const ambientalServices = servicos?.filter(s => 
        (s.tipo && s.tipo.toLowerCase().includes('ambi')) ||
        (s.subtipo_ambiental && s.subtipo_ambiental.length > 0)
    );

    console.log(`Ambiental services found: ${ambientalServices?.length || 0}`);

    // 2. Check if there are any projects with 'desaprop' in the name
    const { data: emps, error: empError } = await supabase
        .from('empreendimentos')
        .select('id, nome')
        .ilike('nome', '%desaprop%');

    if (empError) {
        console.error('Error fetching empreendimentos:', empError);
    } else {
        console.log(`Empreendimentos with 'desaprop' in name: ${emps?.length || 0}`);
    }
}

debugDesaprop().catch(console.error);
