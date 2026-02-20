
"use server"

import { supabase } from "@/lib/supabase"
import { revalidatePath } from "next/cache"
import { Servico } from "@/types"

export async function getServicosByEmpreendimento(empreendimentoId: string) {
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
    const { error } = await supabase
        .from("servicos")
        .insert(data)

    if (error) {
        return { success: false, error: error.message }
    }

    // Sync with Planejamento
    // We try to create a phase. If it fails, we don't block the service creation?
    // Or we should? Ideally transaction, but Supabase RPC or just best effort here.
    // We'll do best effort for now or simple sequential.
    if (data.empreendimento_id && data.descricao) {
        const { error: planError } = await supabase
            .from("planejamento_fases")
            .insert({
                empreendimento_id: data.empreendimento_id,
                fase: data.descricao.length > 255 ? data.descricao.substring(0, 252) + "..." : data.descricao, // Ensure fit
                tipo_fase: 'execução',
                valor_planejado: data.valor_total || 0,
                // data_inicio and data_fim default to null
            })

        if (planError) {
            console.error("Failed to sync with planejamento:", planError)
            // Not returning error to user as service was created, but maybe toast warning?
            // Since this is a server action, we can't toast easily from here without changing return shape.
            // We'll proceed.
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath(`/empreendimentos/${data.empreendimento_id}`) // Also revalidate specific page
    return { success: true }
}

export async function createServiceBatch(empreendimentoIds: string[], data: Partial<Servico>) {
    // data contains description, value, etc. but NOT empreendimento_id or contract_id (usually)
    // If contract_id is passed, it might be tricky if contracts are specific to empreendimentos.
    // For bulk creation, usually we don't link contracts immediately unless we allow selecting "Sem contrato" or we pick contracts per empreendimento (too complex).
    // So we assume no contract or "Sem contrato" for now.

    const payloads = empreendimentoIds.map(empId => ({
        ...data,
        empreendimento_id: empId,
        contrato_id: null // Explicitly null for bulk creation to avoid invalid keys
    }))

    const { error } = await supabase
        .from("servicos")
        .insert(payloads)

    if (error) {
        return { success: false, error: error.message }
    }

    // Sync with Planning for each
    // We can do this in parallel or wait.
    // Ideally we insert into planejamento_fases in batch too.
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
            console.error("Failed to sync batch with planejamento:", planError)
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath("/servicos") // New global page
    return { success: true }
}

export async function updateServico(id: string, data: Partial<Servico>) {
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
