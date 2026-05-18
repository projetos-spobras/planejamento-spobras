'use server'

import { createClient } from "@/lib/supabase/server"
import { getContractEmpenhos, getContractMedicoes, getContratoAditamentos, getEmpreendimentoNamesMap } from "@/lib/api-client"

// Resolve o ID legado na API Externa a partir do UUID do Supabase
export async function resolverOriginalId(contrato_id: string): Promise<string | null> {
    if (!contrato_id) return null;
    
    // Se o próprio ID passado já for numérico/string simples da API
    if (!contrato_id.includes('-')) {
        console.log('[VAL] _originalId resolvido:', contrato_id, '← direto da prop')
        return contrato_id;
    }

    const supabase = await createClient()
    const { data, error } = await supabase
        .from('contratos')
        .select('_originalId')
        .eq('id', contrato_id)
        .single()
        
    if (error || !data?._originalId) {
        console.error('[resolverOriginalId] falhou:', contrato_id, error)
        return null
    }
    
    console.log('[VAL] _originalId resolvido:', data._originalId, '← para UUID:', contrato_id)
    return data._originalId.toString()
}

export async function fetchEmpenhosByContrato(originalId: string) {
    try {
        const supabase = await createClient()
        const data = await getContractEmpenhos(supabase, originalId)
        console.log('[VAL] empenhos:', data?.length ?? 0)
        return { data: data ?? [], error: null }
    } catch (err: any) {
        console.error('[fetchEmpenhosByContrato]', err)
        return { data: [], error: err.message || 'Falha ao buscar empenhos da API' }
    }
}

export async function fetchMedicoesCompletas(contratoOriginalId: string) {
    try {
        const supabase = await createClient()

        // 1. Busca medições do contrato
        const medicoes = await getContractMedicoes(supabase, contratoOriginalId)

        if (!medicoes || medicoes.length === 0) {
            return { data: [], error: null, empIds: [] }
        }

        const empIds = [...new Set(
            medicoes.map((m: any) => String(m.idEmpreendimento || '').trim()).filter(Boolean)
        )]

        // 2. Busca lista de nomes do contrato na API Legada
        const { getContratoEmpreendimentosPorContrato } = await import('@/lib/api-client')
        const contratoEmps = await getContratoEmpreendimentosPorContrato(contratoOriginalId)

        const apiNameById = new Map<string, string>()
        contratoEmps.forEach((ce: any) => {
            const apiId = String(ce.idEmpreendimento || '').trim()
            const apiNome = ce.nmEmpreendimento || ''
            if (apiId && apiNome) apiNameById.set(apiId, apiNome)
        })

        // 3. Busca mapa global de nomes (cacheado) para IDs que não estão no contrato
        const globalNames = await getEmpreendimentoNamesMap()

        // 4. Enriquece medições
        const enriched = medicoes.map((m: any) => {
            const mId = String(m.idEmpreendimento || '').trim()
            
            // Prioridade:
            // 1. Nome na linha da medição
            // 2. Nome na lista do contrato
            // 3. Nome no mapa global (cacheado)
            // 4. Fallback: Obra {id}
            
            const nameFromMedicao = (m.nmEmpreendimento && !m.nmEmpreendimento.includes('Obra ')) ? m.nmEmpreendimento : null
            const resolvedNome = nameFromMedicao ?? apiNameById.get(mId) ?? globalNames[mId] ?? `Obra ${mId}`
            
            return {
                ...m,
                idEmpreendimento: mId,
                nmEmpreendimento: resolvedNome,
                empreendimento_nome: resolvedNome,
            }
        })

        return { data: enriched, error: null, empIds }
    } catch (err: any) {
        console.error('[fetchMedicoesCompletas] Erro fatal:', err)
        // Se falhar a resolução de nomes, tentamos retornar as medições puras pelo menos
        return { data: [], error: err.message || 'Falha ao buscar medições', empIds: [] }
    }
}


export async function fetchAditamentosByContrato(originalId: string) {
    try {
        const supabase = await createClient()
        const data = await getContratoAditamentos(supabase, originalId)
        
        console.log('[VAL] aditamentos:', data?.length ?? 0)
        const mappedData = (data || []).map((a: any) => ({
            id: a.idAditamento?.toString() || crypto.randomUUID(),
            created_at: a.dtAssinatura || new Date().toISOString(),
            empreendimento_id: a.idEmpreendimento?.toString(),
            contrato_id: originalId, // mantemos o ID legível
            tipos: [], 
            valor_estimado: a.vlAditamento,
            prazo_meses: a.qtMesesAditamento || a.qtPrazoAditamento,
            justificativa: a.dsJustificativa || a.dsObjeto,
            processo_sei: a.nrProcessoSei,
            formalizado: a.idStatusAditamento === 2 || true
        }))
        return { data: mappedData, error: null }
    } catch (err: any) {
        console.error('[fetchAditamentosByContrato]', err)
        return { data: [], error: err.message || 'Falha ao buscar aditamentos da API' }
    }
}

/**
 * [RESCUE FLOW] Busca medições individuais para uma lista de IDs de empreendimento
 */
export async function fetchMedicoesRescue(criteriaIds: string[]) {
    try {
        const { getEmpreendimentoMedicoes } = await import("@/lib/api-client")
        const supabase = await createClient()
        
        console.log(`[Action] Rescue Flow: Buscando para ${criteriaIds.length} IDs`)
        
        const rescuePromises = criteriaIds.map(id => getEmpreendimentoMedicoes(supabase, id))
        const rescueResults = await Promise.all(rescuePromises)
        const allMedicoes = rescueResults.flat()
        
        console.log(`[Action] Rescue Flow resultado final:`, allMedicoes.length)
        return { data: allMedicoes, error: null }
    } catch (err: any) {
        console.error('[fetchMedicoesRescue]', err)
        return { data: [], error: err.message || 'Falha no resgate de medições' }
    }
}

