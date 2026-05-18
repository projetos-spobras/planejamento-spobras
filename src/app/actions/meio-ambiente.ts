"use server"

import { createClient } from "@/lib/supabase/server"
import { Servico } from "@/types"

export async function getServicosAmbientais() {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return []

    // 1. Buscar todos os serviços do tipo 'Ambiental'
    const { data, error } = await supabase
        .from('servicos')
        .select(`
            *,
            empreendimento:empreendimentos(id, nome, codigo),
            contrato:contratos(
                id,
                numero,
                tipo,
                data_fim
            )
        `)
        .eq('tipo', 'Ambiental')
        .order('created_at', { ascending: false })

    if (error) {
        console.error("[getServicosAmbientais]", error)
        return []
    }

    if (!data || data.length === 0) {
        return []
    }

    // 2. Agrupar por Empreendimento
    const groupedData: Record<string, any> = {}

    data.forEach((servico: any) => {
        const empId = servico.empreendimento_id
        if (!empId) return // Ignorar na listagem agrupada se não tiver vínculo

        if (!groupedData[empId]) {
            groupedData[empId] = {
                id: empId, // ID principal da linha agora é o do empreendimento
                empreendimento_id: empId,
                empreendimento: servico.empreendimento,
                subtipos: new Set<string>(),
                servicos_count: 0,
                alerta_aditivo: false,
                status_consolidado: 'Pendente',
                last_updated: servico.updated_at || servico.created_at,
                tem_concluido: false,
                tem_em_andamento: false
            }
        }

        const g = groupedData[empId]
        g.servicos_count++
        
        // Coletar subtipos
        const subs = Array.isArray(servico.subtipo_ambiental) ? servico.subtipo_ambiental : []
        if (subs.length === 0) g.subtipos.add('Geral')
        else subs.forEach((s: string) => g.subtipos.add(s))

        // Alertas
        const hasAlert = servico.contrato?.tipo?.includes("Execução de Obras") && ((servico.aditamento_anos || 0) > 0);
        if (hasAlert) g.alerta_aditivo = true

        // Status
        if (servico.status === 'Concluído') g.tem_concluido = true
        if (servico.status === 'Em Andamento') g.tem_em_andamento = true

        // Data mais recente
        if (new Date(servico.updated_at || servico.created_at) > new Date(g.last_updated)) {
            g.last_updated = servico.updated_at || servico.created_at
        }
    })

    return Object.values(groupedData).map(g => {
        let status = 'Pendente'
        if (g.tem_em_andamento) status = 'Em Andamento'
        else if (g.tem_concluido) status = 'Concluído'

        return {
            ...g,
            subtipos: Array.from(g.subtipos),
            status_consolidado: status
        }
    })
}
