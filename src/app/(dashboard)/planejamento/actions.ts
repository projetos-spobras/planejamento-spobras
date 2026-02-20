
"use server"

import { supabase } from "@/lib/supabase"
import { revalidatePath } from "next/cache"
import { PlanejamentoFaseFormValues } from "@/lib/validations"

export async function createPlanejamento(data: PlanejamentoFaseFormValues) {
    // supabase is imported from lib

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
