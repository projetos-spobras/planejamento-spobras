
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';
dotenv.config({ path: '.env.production' });
const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY);

async function inspectColumns() {
    const { data } = await supabase.from('servicos').select('*').limit(1);
    console.log('Columns in servicos:', Object.keys(data[0]));
    
    const { data: desaprop } = await supabase.from('servicos').select('*').ilike('tipo', '%desaprop%').limit(1);
    if (desaprop && desaprop.length > 0) {
        console.log('Sample desaprop service:', desaprop[0]);
    } else {
        console.log('No services found with tipo ILIKE %desaprop%');
    }

    const { data: ambi } = await supabase.from('servicos').select('*').ilike('tipo', '%ambi%').limit(1);
    if (ambi && ambi.length > 0) {
        console.log('Sample ambi service:', ambi[0]);
    }
}
inspectColumns();
