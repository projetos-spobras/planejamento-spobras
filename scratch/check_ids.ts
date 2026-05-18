
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config({ path: '.env.production' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl!, supabaseKey!);

async function checkIds() {
    console.log('--- Checking ID formats in services ---');
    const { data: servicos } = await supabase.from('servicos').select('empreendimento_id, tipo').limit(100);
    
    if (servicos) {
        servicos.slice(0, 10).forEach(s => {
            console.log(`Type: ${s.tipo}, EmpID: ${s.empreendimento_id}, IsUUID: ${/^[0-9a-f-]{36}$/i.test(s.empreendimento_id || '')}`);
        });

        const nonUuid = servicos.filter(s => s.empreendimento_id && !/^[0-9a-f-]{36}$/i.test(s.empreendimento_id));
        console.log(`Found ${nonUuid.length} non-UUID empreendimento_ids in first 100 sample.`);
    }

    console.log('--- Checking ID formats in empreendimentos ---');
    const { data: emps } = await supabase.from('empreendimentos').select('id, codigo, nome').limit(10);
    if (emps) {
        emps.forEach(e => {
            console.log(`ID: ${e.id}, Codigo: ${e.codigo}, Name: ${e.nome.substring(0, 20)}...`);
        });
    }
}

checkIds().catch(console.error);
