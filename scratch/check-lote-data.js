
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkRelationships() {
    const loteId = '98f8a921-ebab-4172-b0a8-4f510e2f6ed1'; // ID correto do Lote 008/SIURB/2025
    
    console.log('--- Verificando Lote ---');
    const { data: lote } = await supabase.from('lotes').select('*').eq('id', loteId).single();
    console.log('Lote:', { id: lote.id, nome: lote.nome, contrato_id: lote.contrato_id });

    console.log('\n--- Verificando Relacionamentos (empreendimentos_contratos) ---');
    const { data: links } = await supabase
        .from('empreendimentos_contratos')
        .select('*, empreendimentos(*)')
        .eq('lote_id', loteId);
    
    console.log('Total de links no Supabase:', links?.length);
    links?.forEach(l => {
        console.log(`- Supabase Emp UUID: ${l.empreendimento_id} | Nome: ${l.empreendimentos?.nome} | Código (API ID?): ${l.empreendimentos?.codigo}`);
    });
}

checkRelationships();
