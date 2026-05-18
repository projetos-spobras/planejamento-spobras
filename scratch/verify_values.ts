
import { createClient } from '@supabase/supabase-js'
import { getEmpreendimentos, getContratos, getContratoEmpreendimentos } from './src/lib/api-client'
import * as dotenv from 'dotenv'

dotenv.config({ path: '.env.local' })

async function testValueAggregation() {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || ''
    const supabase = createClient(supabaseUrl, supabaseKey)

    console.log('--- TESTE DE AGREGAÇÃO DE VALORES ---')
    
    // 1. Pegar empreendimentos via função atualizada
    const { data: list } = await getEmpreendimentos(supabase, { pageSize: 5 })
    
    // 2. Para cada um, buscar manualmente os contratos e somar para comparar
    const allContratos = await getContratos(supabase)
    const allLinks = await getContratoEmpreendimentos(supabase)
    
    const contratoMap = new Map(allContratos.map(c => [c.id, c]))

    for (const emp of list) {
        const links = allLinks.filter(l => l.empreendimento_id === emp.id)
        const expectedTotal = links.reduce((sum, l) => sum + (contratoMap.get(l.contrato_id)?.valor_total || 0), 0)
        
        console.log(`Emp: ${emp.nome}`)
        console.log(`  Links encontrados: ${links.length}`)
        console.log(`  Valor na lista: ${emp.valor_total}`)
        console.log(`  Valor esperado (soma): ${expectedTotal}`)
        
        if (expectedTotal > 0) {
            if (Math.abs(emp.valor_total - expectedTotal) < 0.01) {
                console.log('  ✅ SUCESSO: Valores batem!')
            } else {
                console.log('  ❌ ERRO: Valores não batem!')
            }
        } else {
            console.log('  ℹ️ Sem contratos vinculados, mantendo original.')
        }
        console.log('-------------------')
    }
}

testValueAggregation().catch(console.error)
