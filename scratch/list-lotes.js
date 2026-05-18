
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function listLotes() {
    const { data: lotes } = await supabase.from('lotes').select('id, nome');
    console.log('Lotes encontrados:');
    lotes.forEach(l => console.log(`- ${l.id}: ${l.nome}`));
}

listLotes();
