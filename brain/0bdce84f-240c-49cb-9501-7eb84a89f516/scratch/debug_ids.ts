import { createClient } from '@supabase/supabase-js'
import fetch from 'node-fetch'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!
const supabase = createClient(supabaseUrl, supabaseKey)

async function debug() {
    const contractOriginalId = '1165'
    console.log(`Checking contract ${contractOriginalId}...`)

    // 1. Get measurements from API
    const medRes = await fetch(`${supabaseUrl}/functions/v1/api-proxy?path=/api/Contratos/${contractOriginalId}/Medicoes`, {
        headers: { 'Authorization': `Bearer ${supabaseKey}` }
    })
    const medicoes = await medRes.json()
    console.log(`Total measurements: ${medicoes.length}`)
    const medEmpIds = [...new Set(medicoes.map((m: any) => m.idEmpreendimento))].sort()
    console.log(`Emp IDs in measurements:`, medEmpIds)

    // 2. Get projects in Lote 1165 (assuming I can find it)
    // Actually, let's just look at the projects in the DB linked to this contract
    const { data: links } = await supabase
        .from('empreendimentos_contratos')
        .select('lote_id, empreendimento:empreendimentos(id, nome, codigo)')
        .eq('contrato_id', '3291bb95-9781-5401-8390-3221379cc6a3') // Contract 1165 UUID from logs

    console.log(`\nProjects linked to this contract in Supabase:`)
    links?.forEach(l => {
        console.log(`- ${l.empreendimento.nome} | ID: ${l.empreendimento.id} | Codigo: ${l.empreendimento.codigo} | Lote: ${l.lote_id}`)
    })

    // 3. Get all projects from API to see their IDs
    const empRes = await fetch(`${supabaseUrl}/functions/v1/api-proxy?path=/api/Empreendimentos`, {
        headers: { 'Authorization': `Bearer ${supabaseKey}` }
    })
    const allApiEmps = await empRes.json()
    console.log(`\nTotal API Projects: ${allApiEmps.length}`)
    
    links?.forEach(l => {
        const match = allApiEmps.find((ae: any) => 
            (ae.nmEmpreendimento?.toLowerCase().trim() === l.empreendimento.nome?.toLowerCase().trim()) ||
            (ae.idEmpreendimento?.toString() === l.empreendimento.codigo?.toString())
        )
        if (match) {
            console.log(`MATCH FOUND for ${l.empreendimento.nome}: API idEmpreendimento = ${match.idEmpreendimento}`)
        } else {
            console.log(`NO MATCH for ${l.empreendimento.nome}`)
        }
    })
}

debug()
