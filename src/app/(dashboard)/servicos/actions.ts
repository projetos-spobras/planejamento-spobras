"use server"

import { supabase } from "@/lib/supabase"

export async function getGlobalServices() {
    const { data: services, error } = await supabase
        .from('servicos')
        .select(`
            *,
            empreendimento:empreendimentos(id, nome, codigo),
            contrato:contratos(id, numero)
        `)
        .order('created_at', { ascending: false })
        .limit(100) // Limit for performance for now

    if (error) {
        console.error("Error fetching global services:", JSON.stringify(error, null, 2))
        return []
    }

    return services
}

export async function getAllEmpreendimentos() {
    const { data, error } = await supabase
        .from('empreendimentos')
        .select('id, nome, codigo')
        .order('nome')

    if (error) return []
    return data
}
