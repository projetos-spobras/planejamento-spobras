
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
