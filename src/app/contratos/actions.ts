
'use server'

import { createClient } from "@supabase/supabase-js"
import { revalidatePath } from "next/cache"
import { ContratoFormValues } from "@/lib/validations"

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
const supabase = createClient(supabaseUrl, supabaseKey)

export async function createContrato(data: ContratoFormValues) {
    try {
        const payload = {
            ...data,
            data_inicio: data.data_inicio ? data.data_inicio.toISOString() : null,
            data_fim: data.data_fim ? data.data_fim.toISOString() : null,
        }

        const { error } = await supabase
            .from('contratos')
            .insert([payload])

        if (error) throw error
        revalidatePath('/contratos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function updateContrato(id: string, data: ContratoFormValues) {
    try {
        const payload = {
            ...data,
            data_inicio: data.data_inicio ? data.data_inicio.toISOString() : null,
            data_fim: data.data_fim ? data.data_fim.toISOString() : null,
        }

        const { error } = await supabase
            .from('contratos')
            .update(payload)
            .eq('id', id)

        if (error) throw error
        revalidatePath('/contratos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function deleteContrato(id: string) {
    try {
        const { error } = await supabase
            .from('contratos')
            .delete()
            .eq('id', id)

        if (error) throw error
        revalidatePath('/contratos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}
