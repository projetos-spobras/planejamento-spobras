"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { PlanejamentoFaseFormValues } from "@/lib/validations"

export async function createPlanejamento(data: PlanejamentoFaseFormValues) {
    const supabase = await createClient()

    const payload = {
        ...data,
        data_inicio: data.data_inicio ? data.data_inicio.toISOString() : null,
        data_fim: data.data_fim ? data.data_fim.toISOString() : null,
    }

    const { error } = await supabase
        .from("planejamento_fases")
        .insert([payload])

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/planejamento")
    return { success: true }
}

export async function updatePlanejamento(id: string, data: PlanejamentoFaseFormValues) {
    const supabase = await createClient()

    const payload = {
        ...data,
        data_inicio: data.data_inicio ? data.data_inicio.toISOString() : null,
        data_fim: data.data_fim ? data.data_fim.toISOString() : null,
    }

    const { error } = await supabase
        .from("planejamento_fases")
        .update(payload)
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/planejamento")
    return { success: true }
}

export async function deletePlanejamento(id: string) {
    const supabase = await createClient()
    
    const { error } = await supabase
        .from("planejamento_fases")
        .delete()
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/planejamento")
    return { success: true }
}

export async function updatePlanejamentoBatch(updates: { id: string, data_inicio: string, data_fim: string }[], empreendimentoId: string) {
    if (updates.length === 0) return { success: true }
    
    const supabase = await createClient()

    // Using upsert to handle batch updates
    const { error } = await supabase
        .from("planejamento_fases")
        .upsert(updates.map(u => ({
            id: u.id,
            data_inicio: u.data_inicio,
            data_fim: u.data_fim,
            updated_at: new Date().toISOString()
        })), { onConflict: 'id', ignoreDuplicates: false })

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    return { success: true }
}

export async function updatePlanejamentoBatchPesos(updates: { id: string, peso_percentual: number }[]) {
    if (updates.length === 0) return { success: true }
    
    const supabase = await createClient()
    
    // Using upsert or individual updates
    for (const update of updates) {
        await supabase
            .from("planejamento_fases")
            .update({ peso_percentual: update.peso_percentual, updated_at: new Date().toISOString() })
            .eq("id", update.id)
    }

    revalidatePath("/planejamento")
    return { success: true }
}

export async function updateServicoAditamento(id: string, aditamento_anos: number, aditamento_formalizado: boolean) {
    const supabase = await createClient()
    const { error } = await supabase
        .from('servicos')
        .update({ aditamento_anos, aditamento_formalizado })
        .eq('id', id)
        
    if (error) {
        console.error("Erro ao atualizar aditamento de prazo:", error)
        return { success: false, error: error.message }
    }
    
    revalidatePath("/planejamento")
    return { success: true }
}
