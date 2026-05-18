"use server"

import { supabase } from "@/lib/supabase"
import { revalidatePath } from "next/cache"
import { EmpenhoFormValues } from "@/lib/validations"

export async function createEmpenho(data: EmpenhoFormValues) {
    // supabase is already initialized

    // Convert dates to ISO string for Supabase
    const payload = {
        ...data,
        data_empenho: data.data_empenho ? data.data_empenho.toISOString() : null,
    }

    const { error } = await supabase
        .from("empenhos")
        .insert([payload])

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empenhos")
    return { success: true }
}

export async function updateEmpenho(id: string, data: EmpenhoFormValues) {
    // supabase is imported

    const payload = {
        ...data,
        data_empenho: data.data_empenho ? data.data_empenho.toISOString() : null,
    }

    const { error } = await supabase
        .from("empenhos")
        .update(payload)
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empenhos")
    return { success: true }
}

export async function deleteEmpenho(id: string) {
    // supabase is imported

    const { error } = await supabase
        .from("empenhos")
        .delete()
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empenhos")
    return { success: true }
}
