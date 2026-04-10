import { createClient } from '@supabase/supabase-js'
import dotenv from 'dotenv'
import path from 'path'

dotenv.config({ path: path.join(process.cwd(), '.env.local') })

async function run() {
    const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY)
    
    // Test if we can query Empreendimentos with inner join on Servicos
    const { data, count, error } = await supabase
        .from('empreendimentos')
        .select(`
            id, 
            nome, 
            codigo,
            servicos!inner(id, tipo, subtipo_receita)
        `, { count: 'exact' })
        .in('servicos.tipo', ['Desapropriação', 'Desapropriações', 'Desapropriações (Ações e Materiais)', 'AÇÃO EXPROPRIATÓRIA'])
        .range(0, 5);

    console.log("Error:", error);
    console.log("Count:", count);
    if (data) {
        console.log("Data length:", data.length);
        console.log("First item:", JSON.stringify(data[0], null, 2));
    }
}

run();
