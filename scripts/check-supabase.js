
require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

async function check() {
    console.log('Checking Supabase columns...');

    // Contratos
    const { data: cData, error: cError } = await supabase.from('contratos').select('*').limit(1);
    if (cError) console.error('Error fetching contratos:', cError);
    else {
        console.log('\nColumns in [contratos]:', cData.length > 0 ? Object.keys(cData[0]) : 'Table empty, cannot infer cols from row');
        // If empty, we can't infer easily without proper schema inspection, but let's see if it returns [] or null.
        // Actually, if we select *, we get keys.
    }

    // Empreendimentos
    const { data: eData, error: eError } = await supabase.from('empreendimentos').select('*').limit(1);
    if (eError) console.error('Error fetching empreendimentos:', eError);
    else {
        console.log('\nColumns in [empreendimentos]:', eData.length > 0 ? Object.keys(eData[0]) : 'Table empty');
    }
}

check();
