
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
dotenv.config({ path: '.env.production' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function debug() {
    const { data: lotes, error: lotesError } = await supabase
        .from('lotes')
        .select('id, nome, contrato_id')
        .limit(5);
    
    if (lotesError) {
        console.error('Error fetching lotes:', lotesError);
        return;
    }

    console.log('Lotes found:', lotes);

    const contratoIds = lotes.map(l => l.contrato_id).filter(Boolean);
    if (contratoIds.length > 0) {
        const { data: contratos, error: contError } = await supabase
            .from('contratos')
            .select('id, numero, _originalId')
            .in('id', contratoIds);
        
        if (contError) {
            console.error('Error fetching contratos:', contError);
        } else {
            console.log('Contratos found:', contratos);
        }
    }
}

debug();
