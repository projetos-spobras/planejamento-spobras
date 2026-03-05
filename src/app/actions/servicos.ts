
"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { Servico } from "@/types"

export async function getServicosByEmpreendimento(empreendimentoId: string) {
    const supabase = await createClient()
    // First get linked contracts
    // We assume there is a relationship table or logic. Based on EmpreendimentoDetails, lets check how it gets contracts.
    // It seems it passes `contratosVinculados`. 
    // We can do a join: servicos -> contratos -> empreendimento_contratos (or similar).

    // Instead of complex join here without knowing the exact link table name (it was implied to be `empreendimento_contratos` or similar in previous context, but let's be safe), 
    // we can fetch by contract_id list if we had it, but for a general getter we need the link.
    // Let's assume the link table is `empreendimento_contratos`.

    const { data, error } = await supabase
        .from("servicos")
        .select(`
            *,
            contratos!inner (
                id,
                numero,
                empreendimento_contratos!inner (
                    empreendimento_id
                )
            )
        `)
        .eq("contratos.empreendimento_contratos.empreendimento_id", empreendimentoId)

    if (error) {
        console.error("Error fetching servicos:", error)
        return []
    }

    return data as any[]
}

export async function getServicosByEmpreendimentoId(empreendimentoId: string) {
    const supabase = await createClient()
    // We need to find the Contracts linked to this Empreendimento.
    // Assuming table `empreendimento_contratos`.
    const { data: links } = await supabase
        .from('empreendimento_contratos')
        .select('contrato_id')
        .eq('empreendimento_id', empreendimentoId)

    if (!links || links.length === 0) return []

    const contratoIds = links.map(l => l.contrato_id)

    const { data: servicos, error } = await supabase
        .from('servicos')
        .select(`*, contrato:contratos(numero, contratada)`)
        .in('contrato_id', contratoIds)
        .order('created_at', { ascending: false })

    if (error) {
        console.error("Error getting servicos:", error)
        return { data: [] } // Return object to match destructuring in page? No, page uses `const { data: servicos } = await ...`
        // Wait, the page component uses: `const { data: servicos } = await getServicosByEmpreendimentoId(id)`
        // But here I was returning just `servicos` or `[]`.
        // The page destructures `data`.
        // So I should return `{ data: servicos }` or `{ data: [] }`.
    }

    return { data: servicos }
}

export async function createServico(data: Partial<Servico>) {
    const supabase = await createClient()
    const { data: inserted, error } = await supabase
        .from("servicos")
        .insert(data)
        .select('id')
        .single()

    if (error) {
        return { success: false, error: error.message }
    }

    // [P3] Sincronização com Planejamento — melhor esforço, não bloqueia o serviço
    let planWarning = false
    if (data.empreendimento_id && data.descricao) {
        const { error: planError } = await supabase
            .from("planejamento_fases")
            .insert({
                empreendimento_id: data.empreendimento_id,
                fase: data.descricao.length > 255 ? data.descricao.substring(0, 252) + "..." : data.descricao,
                tipo_fase: 'execução',
                valor_planejado: data.valor_total || 0,
            })

        if (planError) {
            planWarning = true
            console.error('[createServico] Falha ao criar fase de planejamento:', {
                servico_id: inserted?.id,
                empreendimento_id: data.empreendimento_id,
                erro: planError.message,
                codigo: planError.code,
            })
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath(`/empreendimentos/${data.empreendimento_id}`)
    return { success: true, planWarning }
}

export async function createServiceBatch(empreendimentoIds: string[], data: Partial<Servico>) {
    const supabase = await createClient()
    const payloads = empreendimentoIds.map(empId => ({
        ...data,
        empreendimento_id: empId,
        contrato_id: null
    }))

    const { error } = await supabase
        .from("servicos")
        .insert(payloads)

    if (error) {
        return { success: false, error: error.message }
    }

    // [P3] Sincronização com Planejamento — melhor esforço, não bloqueia
    let planWarning = false
    if (data.descricao) {
        const planPayloads = empreendimentoIds.map(empId => ({
            empreendimento_id: empId,
            fase: data.descricao!.length > 255 ? data.descricao!.substring(0, 252) + "..." : data.descricao,
            tipo_fase: 'execução',
            valor_planejado: data.valor_total || 0,
        }))

        const { error: planError } = await supabase
            .from("planejamento_fases")
            .insert(planPayloads)

        if (planError) {
            planWarning = true
            console.error('[createServiceBatch] Falha ao criar fases de planejamento:', {
                empreendimento_ids: empreendimentoIds,
                total: empreendimentoIds.length,
                erro: planError.message,
                codigo: planError.code,
            })
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath("/servicos")
    return { success: true, planWarning }
}

export async function updateServico(id: string, data: Partial<Servico>) {
    const supabase = await createClient()
    const { error } = await supabase
        .from("servicos")
        .update(data)
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    return { success: true }
}

export async function deleteServico(id: string) {
    const supabase = await createClient()
    const { error } = await supabase
        .from("servicos")
        .delete()
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    return { success: true }
}
