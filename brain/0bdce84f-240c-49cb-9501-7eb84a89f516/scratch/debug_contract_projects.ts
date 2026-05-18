import { createClient } from '@supabase/supabase-js'
import fetch from 'node-fetch'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!

async function debug() {
    const contractOriginalId = '1165'
    
    // 1. Get ContratoEmpreendimentos from API
    const ceRes = await fetch(`${supabaseUrl}/functions/v1/api-proxy?path=/api/ContratoEmpreendimentos`, {
        headers: { 'Authorization': `Bearer ${supabaseKey}` }
    })
    const allCE = await ceRes.json()
    const contractCE = allCE.filter((ce: any) => String(ce.idContrato) === contractOriginalId)
    
    console.log(`Contract ${contractOriginalId} has ${contractCE.length} projects in ContratoEmpreendimentos:`)
    contractCE.forEach((ce: any) => {
        console.log(`- idEmpreendimento: ${ce.idEmpreendimento} | idContratoEmpreendimento: ${ce.idContratoEmpreendimento}`)
    })

    // 2. Get Medicoes for this contract
    const medRes = await fetch(`${supabaseUrl}/functions/v1/api-proxy?path=/api/Contratos/${contractOriginalId}/Medicoes`, {
        headers: { 'Authorization': `Bearer ${supabaseKey}` }
    })
    const medicoes = await medRes.json()
    const uniqueMedEmpIds = [...new Set(medicoes.map((m: any) => m.idEmpreendimento))].sort()
    console.log(`\nUnique idEmpreendimento in Medicoes:`, uniqueMedEmpIds)
    
    // 3. Get first measurement detail to see names
    if (medicoes.length > 0) {
        console.log(`\nSample measurement row:`, {
            idEmpreendimento: medicoes[0].idEmpreendimento,
            nmEmpreendimento: medicoes[0].nmEmpreendimento || medicoes[0].NmEmpreendimento
        })
    }
}

debug()
