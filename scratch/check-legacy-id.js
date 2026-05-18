
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkLegacyAPI() {
    console.log('--- Buscando Contrato no Supabase ---');
    const { data: contratos } = await supabase.from('contratos').select('*').eq('numero', '008/SIURB/2025').single();
    console.log('Contrato:', { id: contratos.id, numero: contratos.numero, original_id: contratos._originalId });
}

checkLegacyAPI();
