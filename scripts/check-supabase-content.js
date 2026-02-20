
require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

async function check() {
    console.log('Checking Supabase content...');

    // Gerencias
    const { data: gData, error: gError } = await supabase.from('gerencias').select('*').limit(5);
    if (gError) console.error('Error fetching gerencias:', gError);
    else {
        console.log('\nSample [gerencias]:');
        console.log(gData);
    }

    // Contratos
    const { data: cData, error: cError } = await supabase.from('contratos').select('id, numero, contratada').limit(5);
    if (cError) console.error('Error fetching contratos:', cError);
    else {
        console.log('\nSample [contratos]:');
        console.log(cData);
    }
}

check();
