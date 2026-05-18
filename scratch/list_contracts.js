
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
dotenv.config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function test() {
    const { data: contratos } = await supabase.from('contratos').select('id, numero, api_id').limit(1000);
    console.log("Contratos in Supabase:", contratos.length);
    const c1165 = contratos.find(c => c.api_id == '1165' || c.numero.includes('1165'));
    console.log("Found by 1165:", JSON.stringify(c1165, null, 2));
}

test().catch(console.error);
