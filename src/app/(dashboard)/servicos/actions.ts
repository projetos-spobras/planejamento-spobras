"use server"

import { createClient } from "@/lib/supabase/server"
import { getEmpreendimentos, getContratos } from "@/lib/api-client"

export async function getGlobalServices(page: number = 1, pageSize: number = 12) {
    const supabase = await createClient()

    const from = (page - 1) * pageSize;
    const to = from + pageSize - 1;

    // Parallelize services fetch + lookup data
    const [{ data: services, count, error }, { data: empreendimentosRaw }, contratos] = await Promise.all([
        supabase.from('servicos').select('*', { count: 'exact' }).order('created_at', { ascending: false }).range(from, to),
        getEmpreendimentos(supabase),
        getContratos(supabase)
    ])

    if (error) {
        console.error("Error fetching global services:", JSON.stringify(error, null, 2))
        return { data: [], count: 0 }
    }

    // Pre-build Maps for O(1) lookups instead of O(n) .find() per service
    const empMap = new Map((empreendimentosRaw || []).map((e: any) => [e.id, e]))
    const contMap = new Map(contratos.map((c: any) => [c.id, c]))

    const mapped = (services || []).map(s => {
        const emp = empMap.get(s.empreendimento_id) as any;
        const cont = contMap.get(s.contrato_id) as any;

        return {
            ...s,
            empreendimento: emp ? { id: emp.id, nome: emp.nome, codigo: emp.codigo } : null,
            contrato: cont ? { id: cont.id, numero: cont.numero } : null
        }
    })

    return { data: mapped, count: count || 0 }
}

export async function getAllEmpreendimentos() {
    const supabase = await createClient()
    const { data } = await getEmpreendimentos(supabase)
    return data || []
}
