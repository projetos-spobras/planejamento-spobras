
'use server'

import { createClient } from "@supabase/supabase-js"
import { revalidatePath } from "next/cache"
import { EmpreendimentoFormValues } from "@/lib/validations"

// Use environment variables for server-side client
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY! // Or SERVICE_ROLE if RLS enabled/needed specific privs, but ANON is fine given 'Disable RLS' instruction
const supabase = createClient(supabaseUrl, supabaseKey)

export async function createEmpreendimento(data: EmpreendimentoFormValues) {
    try {
        const { error } = await supabase
            .from('empreendimentos')
            .insert([data])

        if (error) throw error
        revalidatePath('/empreendimentos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function updateEmpreendimento(id: string, data: EmpreendimentoFormValues) {
    try {
        const { error } = await supabase
            .from('empreendimentos')
            .update(data)
            .eq('id', id)

        if (error) throw error
        revalidatePath('/empreendimentos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}

export async function deleteEmpreendimento(id: string) {
    try {
        const { error } = await supabase
            .from('empreendimentos')
            .delete()
            .eq('id', id)

        if (error) throw error
        revalidatePath('/empreendimentos')
        return { success: true }
    } catch (error: any) {
        return { success: false, error: error.message }
    }
}
