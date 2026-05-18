
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
dotenv.config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function test() {
    const { data: lotes } = await supabase.from('lotes').select('id, nome, contrato_id');
    console.log("Lotes:", JSON.stringify(lotes, null, 2));
    
    if (lotes && lotes.length > 0) {
        const contratoId = lotes[0].contrato_id;
        const { data: contrato } = await supabase.from('contratos').select('id, numero, api_id').eq('id', contratoId).single();
        console.log("Associated Contrato:", JSON.stringify(contrato, null, 2));
    }
}

test().catch(console.error);
