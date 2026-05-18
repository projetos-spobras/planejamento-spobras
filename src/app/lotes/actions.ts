
'use server'

import { createClient } from "@supabase/supabase-js"
import { revalidatePath } from "next/cache"
import { LoteFormValues } from "@/lib/validations"

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
const supabase = createClient(supabaseUrl, supabaseKey)

export async function createLote(data: LoteFormValues) {
    try {
        const { error } = await supabase
            .from('lotes')
            .insert([data])

        if (error) throw error
        revalidatePath('/lotes')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function updateLote(id: string, data: LoteFormValues) {
    try {
        const { error } = await supabase
            .from('lotes')
            .update(data)
            .eq('id', id)

        if (error) throw error
        revalidatePath('/lotes')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function deleteLote(id: string) {
    try {
        // [I3] Guard: impede exclusão de lote com empreendimentos vinculados
        const { data: vinculos, error: checkError } = await supabase
            .from('empreendimentos_contratos')
            .select('id')
            .eq('lote_id', id)
            .limit(1)

        if (checkError) throw checkError

        if (vinculos && vinculos.length > 0) {
            return {
                success: false,
                error: 'Não é possível excluir um lote com empreendimentos vinculados. Remova os vínculos antes de excluir o lote.'
            }
        }

        const { error } = await supabase
            .from('lotes')
            .delete()
            .eq('id', id)

        if (error) throw error
        revalidatePath('/lotes')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}
