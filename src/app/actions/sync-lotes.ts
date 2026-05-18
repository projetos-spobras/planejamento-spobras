'use server'

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { getContratos, getContratoEmpreendimentos } from "@/lib/api-client"

let lastSyncLotesTime: number | null = null;
const CACHE_TTL_MS = 15 * 60 * 1000; // 15 minutos

/**
 * Automates Lote reconciliation based on SPObras API relationships.
 * Rule: Contracts with more than one project linked are considered a Lote.
 * Name Convention: "Lote - [Contrato Number]"
 * Idempotency is achieved by ensuring lookup is based uniquely on contrato_id.
 * Performance: Uses TTL cache, batch queries (O(1) lookup), and batch inserts.
 */
export async function syncLotesFromApi() {
    try {
        if (lastSyncLotesTime && (Date.now() - lastSyncLotesTime < CACHE_TTL_MS)) {
            return { success: true, created: 0, skipped: 0, message: 'Sync skipped (cache TTL)' }
        }

        const supabase = await createClient()
        const { data: { user }, error: authError } = await supabase.auth.getUser()
        if (authError || !user) return { success: false, message: 'Não autorizado' }

        // 1. Fetch data from API + Local
        const [contratos, links] = await Promise.all([
            getContratos(supabase),
            getContratos(supabase).then(cList => getContratoEmpreendimentos(supabase, [], cList))
        ])

        // 2. Identify contracts with project_count > 1
        const linksByContract = new Map<string, any[]>()
        links.forEach(link => {
            if (!link.contrato_id) return
            const list = linksByContract.get(link.contrato_id) || []
            list.push(link)
            linksByContract.set(link.contrato_id, list)
        })

        const lotEligibleContracts = Array.from(linksByContract.entries())
            .filter(([_, projectLinks]) => projectLinks.length > 1)

        // 3. Otimização: Buscar todas as chaves existentes de uma vez
        const { data: lotesExistentesData, error: lotesError } = await supabase
            .from('lotes')
            .select('id, contrato_id')
            .not('contrato_id', 'is', null)

        if (lotesError) throw lotesError;

        const lotesExistentesMap = new Map<string, string>() // contrato_id -> lote_id
        if (lotesExistentesData) {
            lotesExistentesData.forEach(l => {
                if (l.contrato_id) lotesExistentesMap.set(l.contrato_id, l.id)
            })
        }

        const lotesParaInserir: any[] = []
        const lotesParaProcessar: { contratoId: string, numero: string, projectLinks: any[] }[] = []

        for (const [contratoId, projectLinks] of lotEligibleContracts) {
            const contratoInfo = contratos.find((c: any) => c.id === contratoId)
            if (!contratoInfo) continue

            const numero = contratoInfo.numero || 'S/N'
            lotesParaProcessar.push({ contratoId, numero, projectLinks })

            if (!lotesExistentesMap.has(contratoId)) {
                lotesParaInserir.push({
                    nome: `Lote - ${numero}`,
                    contrato_id: contratoId,
                    tipo: 'GERAL',
                    descricao: `Lote automático criado via sincronização do contrato ${numero}`
                })
            }
        }

        let createdCount = 0
        
        // 4. Batch Insert de Lotes
        if (lotesParaInserir.length > 0) {
            const { data: insertedLotes, error: insertError } = await supabase
                .from('lotes')
                .insert(lotesParaInserir)
                .select('id, contrato_id')
            
            if (insertError) {
                console.error('Batch insert error:', insertError)
            } else if (insertedLotes) {
                createdCount = insertedLotes.length
                insertedLotes.forEach(l => {
                    if (l.contrato_id) lotesExistentesMap.set(l.contrato_id, l.id)
                })
            }
        }

        // 5. Batch Upsert de Vínculos
        const vinculosParaUpsert: any[] = []
        for (const { contratoId, projectLinks } of lotesParaProcessar) {
            const loteId = lotesExistentesMap.get(contratoId)
            if (loteId) {
                for (const link of projectLinks) {
                    vinculosParaUpsert.push({
                        empreendimento_id: link.empreendimento_id,
                        contrato_id: link.contrato_id,
                        lote_id: loteId,
                        updated_at: new Date().toISOString()
                    })
                }
            }
        }

        let updatedLinksCount = 0
        if (vinculosParaUpsert.length > 0) {
            const { error: upsertError } = await supabase
                .from('empreendimentos_contratos')
                .upsert(vinculosParaUpsert, { onConflict: 'empreendimento_id,contrato_id' })
            
            if (upsertError) {
                console.error('Batch upsert error:', upsertError)
            } else {
                updatedLinksCount = vinculosParaUpsert.length
            }
        }

        // Atualiza o cache TTL em memória
        lastSyncLotesTime = Date.now();

        return {
            success: true,
            created: createdCount,
            updatedLinks: updatedLinksCount,
            updatedNames: 0,
            skipped: lotEligibleContracts.length - createdCount,
            message: `Sincronização OK. Criados: ${createdCount}, Vínculos: ${updatedLinksCount}.`
        }

    } catch (err: any) {
        console.error('[syncLotesFromApi]', err)
        return { success: false, message: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }
}

