"use server"

import { createClient } from "@/lib/supabase/server"
import { Servico } from "@/types"

export async function getServicosAmbientais() {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return []

    // 1. Buscar todos os serviços do tipo 'Ambiental' ou 'SERVIÇOS AMBIENTAIS'
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
        .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])
        .order('created_at', { ascending: false })

    if (error) {
        console.error("[getServicosAmbientais]", error)
        return []
    }

    if (!data || data.length === 0) {
        return []
    }

    // Resolve missing empreendimento link via contract
    const contratoIds = data
        .filter(s => !s.empreendimento_id && s.contrato_id)
        .map(s => s.contrato_id)

    const contratoToEmpMap = new Map<string, { id: string; nome: string; codigo: string }>()
    if (contratoIds.length > 0) {
        const { data: ecLinks } = await supabase
            .from('empreendimentos_contratos')
            .select('contrato_id, empreendimento_id, empreendimentos(id, nome, codigo)')
            .in('contrato_id', contratoIds)

        if (ecLinks) {
            ecLinks.forEach((ec: any) => {
                if (ec.contrato_id && ec.empreendimentos) {
                    contratoToEmpMap.set(ec.contrato_id, {
                        id: ec.empreendimentos.id,
                        nome: ec.empreendimentos.nome,
                        codigo: ec.empreendimentos.codigo
                    })
                }
            })
        }
    }

    // 2. Agrupar por Empreendimento
    const groupedData: Record<string, any> = {}

    data.forEach((servico: any) => {
        let empId = servico.empreendimento_id
        let empData = servico.empreendimento
        if (!empId && servico.contrato_id && contratoToEmpMap.has(servico.contrato_id)) {
            const m = contratoToEmpMap.get(servico.contrato_id)!
            empId = m.id
            empData = m
        }
        if (!empId) return // Ignorar na listagem agrupada se não tiver vínculo

        if (!groupedData[empId]) {
            groupedData[empId] = {
                id: empId, // ID principal da linha agora é o do empreendimento
                empreendimento_id: empId,
                empreendimento: empData,
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
