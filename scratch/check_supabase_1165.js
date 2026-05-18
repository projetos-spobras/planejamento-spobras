
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
dotenv.config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function test() {
    const { data: contrato } = await supabase.from('contratos').select('id, numero, api_id').ilike('numero', '%008/SIURB/2025%').single();
    console.log("Contrato in Supabase:", JSON.stringify(contrato, null, 2));
    
    if (contrato) {
        const { data: lotes } = await supabase.from('lotes').select('id, nome, contrato_id').eq('contrato_id', contrato.id);
        console.log("Associated Lotes:", JSON.stringify(lotes, null, 2));
    }
}

test().catch(console.error);
