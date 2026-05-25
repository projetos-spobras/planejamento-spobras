import { createClient } from '@supabase/supabase-js'
import fs from 'fs'

const SUPABASE_URL = "https://kuxryjfjbsmbhcjwgsgt.supabase.co"
const SUPABASE_SERVICE_ROLE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt1eHJ5amZqYnNtYmhjandnc2d0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1OTg0NzE4NCwiZXhwIjoyMDc1NDIzMTg0fQ.HtyyVQN9QtgKtGfpSsnu7mvMHH8YRzl-Jk3cZvpqFTk"

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY)

async function run() {
    const empreendimentoId = "17a8c6b2-5489-4a76-848c-f43e5bc0b24f"
    const results = {}

    // Test 1: get contratosDoEmp
    const { data: contratosDoEmp, error: err1 } = await supabase
        .from('empreendimentos_contratos')
        .select('contrato_id')
        .eq('empreendimento_id', empreendimentoId)

    results.contratosDoEmp = contratosDoEmp
    results.err1 = err1

    const contratoIdsDoEmp = (contratosDoEmp || []).map(ec => ec.contrato_id)
    results.contratoIdsDoEmp = contratoIdsDoEmp

    // Test 2: byEmp query (tipo = Ambiental or SERVIÇOS AMBIENTAIS)
    const { data: byEmp, error: err2 } = await supabase
        .from('servicos')
        .select(`
            id, contrato_id, empreendimento_id, codigo, descricao, tipo, status
        `)
        .eq('empreendimento_id', empreendimentoId)

    results.byEmpAll = byEmp
    results.err2 = err2

    // Test 3: check all services filter by type
    const { data: byEmpFiltered, error: err3 } = await supabase
        .from('servicos')
        .select(`
            id, contrato_id, empreendimento_id, codigo, descricao, tipo, status
        `)
        .eq('empreendimento_id', empreendimentoId)
        .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])

    results.byEmpFiltered = byEmpFiltered
    results.err3 = err3

    // Test 4: query by contrato
    if (contratoIdsDoEmp.length > 0) {
        const { data: byContrato, error: err4 } = await supabase
            .from('servicos')
            .select(`
                id, contrato_id, empreendimento_id, codigo, descricao, tipo, status
            `)
            .in('contrato_id', contratoIdsDoEmp)

        results.byContratoAll = byContrato
        results.err4 = err4

        const { data: byContratoFiltered, error: err5 } = await supabase
            .from('servicos')
            .select(`
                id, contrato_id, empreendimento_id, codigo, descricao, tipo, status
            `)
            .in('contrato_id', contratoIdsDoEmp)
            .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])

        results.byContratoFiltered = byContratoFiltered
        results.err5 = err5
    }

    fs.writeFileSync("c:/Users/x437719/Downloads/planejamento-spobras/test_query_out.json", JSON.stringify(results, null, 2))
    console.log("Done. Output written to test_query_out.json")
}

run()
