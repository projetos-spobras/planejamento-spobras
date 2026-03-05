"use server"

import { supabase } from "@/lib/supabase"
import { getEmpreendimentos, getContratos } from "@/lib/api-client"

export async function getGlobalServices() {
    const { data: services, error } = await supabase
        .from('servicos')
        .select('*')
        .order('created_at', { ascending: false })
        .limit(100) // Limit for performance for now

    if (error) {
        console.error("Error fetching global services:", JSON.stringify(error, null, 2))
        return []
    }

    const [empreendimentos, contratos] = await Promise.all([
        getEmpreendimentos(supabase),
        getContratos(supabase)
    ])

    return services.map(s => {
        const emp = empreendimentos.find((e: any) => e.id === s.empreendimento_id);
        const cont = contratos.find((c: any) => c.id === s.contrato_id);

        return {
            ...s,
            empreendimento: emp ? { id: emp.id, nome: emp.nome, codigo: emp.codigo } : null,
            contrato: cont ? { id: cont.id, numero: cont.numero } : null
        }
    })
}

export async function getAllEmpreendimentos() {
    return await getEmpreendimentos(supabase)
}
