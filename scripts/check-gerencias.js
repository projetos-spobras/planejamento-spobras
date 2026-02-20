
require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

async function check() {
    console.log('Checking Gerencias names...');

    const { count, error } = await supabase.from('gerencias').select('*', { count: 'exact', head: true }).not('nome', 'is', null);
    if (error) console.error('Error:', error);
    else {
        console.log(`Gerencias with names: ${count}`);
    }

    // Check looking for specific IDs we know exist in VW_CONTRATOS like 2
    const { data: g2 } = await supabase.from('gerencias').select('*').eq('id', 2);
    console.log('Gerencia 2:', g2);
}

check();
