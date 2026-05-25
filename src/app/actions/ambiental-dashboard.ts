"use server"

import { createClient } from "@/lib/supabase/server"

export async function getAmbientalDashboardData(options: {
    search?: string
    tecnicos?: string[]
    tiposServico?: string[]
    status?: string[]
    estagios?: string[]
    programas?: string[]
    page?: number
    pageSize?: number
}) {
    const supabase = await createClient()
    const { page = 1, pageSize = 10 } = options

    const { data: servicos, error } = await supabase
        .from('servicos')
        .select(`
            id,
            descricao,
            status,
            subtipo_ambiental,
            updated_at,
            empreendimento_id,
            contrato_id,
            empreendimentos (
                id,
                nome,
                codigo
            )
        `)
        .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])

    if (error) {
        console.error("Error fetching services for environmental dashboard:", error)
        return { data: [], totalCount: 0, indicators: { totalAtivos: 0, pendentes: 0, vencidos: 0, distribuicao: {} } }
    }

    // Resolve missing empreendimento link via contract
    const contratoIds = (servicos || [])
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

    const servicoIds = (servicos || []).map(s => s.id)

    // Consultas secundárias paralelas protegidas contra erros de tabela/coluna ausente
    const [detalhesResult, licsResult] = await Promise.all([
        servicoIds.length > 0
            ? supabase.from('ambiental_detalhes').select('*').in('servico_id', servicoIds)
            : Promise.resolve({ data: [] as any[], error: null }),
        servicoIds.length > 0
            ? supabase.from('ambiental_licenciamentos').select('servico_id, tipo, status, observacao').in('servico_id', servicoIds)
            : Promise.resolve({ data: [] as any[], error: null })
    ])

    const detalhes = (!detalhesResult.error && detalhesResult.data) ? detalhesResult.data : []
    if (detalhesResult.error) {
        console.warn("Erro ao buscar ambiental_detalhes no dashboard:", detalhesResult.error)
    }

    const licenciamentos = (!licsResult.error && licsResult.data) ? licsResult.data : []
    if (licsResult.error) {
        console.warn("Erro ao buscar ambiental_licenciamentos no dashboard:", licsResult.error)
    }

    // Mapear em O(1) para enriquecer os serviços
    const detalhesMap = new Map<string, any>()
    detalhes.forEach((d: any) => {
        if (d.servico_id) {
            detalhesMap.set(d.servico_id, d)
        }
    })

    const licsGrouped = new Map<string, any[]>()
    licenciamentos.forEach((l: any) => {
        if (l.servico_id) {
            const arr = licsGrouped.get(l.servico_id) || []
            arr.push(l)
            licsGrouped.set(l.servico_id, arr)
        }
    })

    // Enriquecer os serviços carregados
    const servicosEnriquecidos = (servicos || []).map(s => {
        let empId = s.empreendimento_id
        let empData = s.empreendimentos
        if (!empId && s.contrato_id && contratoToEmpMap.has(s.contrato_id)) {
            const m = contratoToEmpMap.get(s.contrato_id)!
            empId = m.id
            empData = m
        }
        const ambDetalhe = detalhesMap.get(s.id) || null
        const ambLics = licsGrouped.get(s.id) || []
        return {
            ...s,
            empreendimento_id: empId,
            empreendimentos: empData,
            ambiental_detalhes: ambDetalhe,
            ambiental_licenciamentos: ambLics,
            "ambiental_licenciamentos!ambiental_licenciamentos_servico_id_fkey": ambLics
        }
    })

    console.log('[Ambiental] servicos carregados e enriquecidos com sucesso:', servicosEnriquecidos?.length)

    // 2. Group by empreendimento_id
    const agrupado = new Map<string, any>()
    
    servicosEnriquecidos.forEach(s => {
        const emp = s.empreendimentos || { id: `sem-emp-${s.id}`, nome: 'Sem Empreendimento', codigo: '' }
        const empId = emp.id
        
        if (!agrupado.has(empId)) {
            const amb = s.ambiental_detalhes || null
            agrupado.set(empId, {
                id: empId, // Link para /ambiental/[id] (id do empreendimento)
                empreendimento_id: empId,
                nome_empreendimento: emp.nome,
                codigo_obra: emp.codigo,
                empreendimento: emp,
                sei_processo: amb?.sei_processo || null,
                tecnico_gma: amb?.tecnico_gma || null,
                tipo_servico: '',
                tipo_servico_raw: [],
                status: amb?.status || s.status || 'Não Iniciado',
                estagio_contratacao: amb?.estagio !== null && amb?.estagio !== undefined ? String(amb.estagio) : null,
                prazo: amb?.prazo || null,
                percentual_conclusao: amb?.percentual_conclusao || 0,
                programa: amb?.programa || null,
                valor_contrato: amb?.valor_contrato || s.valor_total || 0,
                licenciamentos: [],
                servicos_list: [],
                updated_at: s.updated_at || null,
                total_servicos: 0
            })
        }
        
        const g = agrupado.get(empId)
        g.total_servicos += 1
        
        // Acumular tipos de serviço
        if (s.subtipo_ambiental && s.subtipo_ambiental.length > 0) {
            s.subtipo_ambiental.forEach((t: string) => {
                if (!g.tipo_servico_raw.includes(t)) {
                    g.tipo_servico_raw.push(t)
                }
            })
        }
        
        // Acumular licenciamentos
        if (s.ambiental_licenciamentos && s.ambiental_licenciamentos.length > 0) {
            s.ambiental_licenciamentos.forEach((l: any) => {
                if (!g.licenciamentos.find((xl: any) => xl.id === l.id)) {
                    g.licenciamentos.push(l)
                }
            })
        }
        
        // Adicionar o serviço em si à lista
        g.servicos_list.push({
            id: s.id,
            descricao: s.descricao || s.codigo || 'Serviço Ambiental',
            subtipo_ambiental: s.subtipo_ambiental || []
        })
        
        // Atualizar o tipo_servico formatado
        g.tipo_servico = g.tipo_servico_raw.join(', ')
    })
    
    let groupedArray = Array.from(agrupado.values())

    // 3. Apply Filters in JS
    if (options.search) {
        const searchLower = options.search.toLowerCase()
        groupedArray = groupedArray.filter(g => 
            (g.nome_empreendimento && g.nome_empreendimento.toLowerCase().includes(searchLower)) ||
            (g.sei_processo && g.sei_processo.toLowerCase().includes(searchLower))
        )
    }

    if (options.tecnicos && options.tecnicos.length > 0) {
        groupedArray = groupedArray.filter(g => 
            g.tecnico_gma && options.tecnicos!.includes(g.tecnico_gma)
        )
    }

    if (options.tiposServico && options.tiposServico.length > 0) {
        groupedArray = groupedArray.filter(g => 
            g.tipo_servico_raw.some((t: string) => options.tiposServico!.includes(t))
        )
    }

    if (options.status && options.status.length > 0) {
        groupedArray = groupedArray.filter(g => 
            g.status && options.status!.includes(g.status)
        )
    }

    if (options.estagios && options.estagios.length > 0) {
        groupedArray = groupedArray.filter(g => 
            g.estagio_contratacao && options.estagios!.includes(g.estagio_contratacao)
        )
    }

    if (options.programas && options.programas.length > 0) {
        groupedArray = groupedArray.filter(g => 
            g.programa && options.programas!.includes(g.programa)
        )
    }

    // Sort: sort alphabetically by project name
    groupedArray.sort((a, b) => a.nome_empreendimento.localeCompare(b.nome_empreendimento))

    // 4. Calculate Indicators (based on total mapped services, prior to filtering to represent overall GMA status)
    const allGroups = Array.from(agrupado.values())
    const totalAtivos = allGroups.filter(g => 
        !['Concluído', 'Finalizado', 'Encerrado'].includes(g.status)
    ).length

    // Com licenciamento pendente (pelo menos um 'P')
    const pendentes = allGroups.filter(g => 
        g.licenciamentos.some((l: any) => l.status === 'P')
    ).length

    // Em andamento com prazo vencido
    const hoje = new Date().toISOString().split('T')[0]
    const vencidos = allGroups.filter(g => 
        g.status === 'Em andamento' && g.prazo && g.prazo < hoje
    ).length

    // Distribuição por tipo de serviço
    const distribuicao: Record<string, number> = {}
    allGroups.forEach(g => {
        g.tipo_servico_raw.forEach((t: string) => {
            distribuicao[t] = (distribuicao[t] || 0) + 1
        })
    })

    const totalCount = groupedArray.length

    // 5. Paginate
    const from = (page - 1) * pageSize
    const paginatedData = groupedArray.slice(from, from + pageSize)

    return {
        data: paginatedData,
        totalCount,
        indicators: {
            totalAtivos,
            pendentes,
            vencidos,
            distribuicao
        }
    }
}

export async function getAmbientalFilterOptions() {
    const supabase = await createClient()

    // Buscamos valores únicos existentes no banco para popular os filtros
    const [
        tecnicosRes,
        programasRes,
        statusRes
    ] = await Promise.all([
        supabase.from('ambiental_detalhes').select('tecnico_gma').not('tecnico_gma', 'is', null),
        supabase.from('ambiental_detalhes').select('programa').not('programa', 'is', null),
        supabase.from('ambiental_detalhes').select('status').not('status', 'is', null),
    ])

    const tecnicos = !tecnicosRes.error && tecnicosRes.data ? tecnicosRes.data : []
    const programas = !programasRes.error && programasRes.data ? programasRes.data : []
    const status = !statusRes.error && statusRes.data ? statusRes.data : []

    if (tecnicosRes.error || programasRes.error || statusRes.error) {
        console.warn("Erro ao buscar opções de filtro de ambiental_detalhes (tabela pode não existir):", {
            tecnicosError: tecnicosRes.error,
            programasError: programasRes.error,
            statusError: statusRes.error
        })
    }

    const uniqueTecnicos = Array.from(new Set((tecnicos || []).map(t => t.tecnico_gma))).filter(Boolean).sort()
    const uniqueProgramas = Array.from(new Set((programas || []).map(p => p.programa))).filter(Boolean).sort()
    const uniqueStatus = Array.from(new Set((status || []).map(s => s.status))).filter(Boolean).sort()

    // Fallbacks if tables are empty
    const fallbackStatus = uniqueStatus.length > 0 ? uniqueStatus : [
        'Não Iniciado', 'Em andamento', 'Em licitação', 'À licitar', 'Suspenso', 
        'Concluído', 'Finalizado', 'Encerrado', 'Sob gestão SIURB', 
        'Em trâmite - Aditivo', 'Licitação concluída', 'Vigente'
    ]

    return {
        tecnicos: uniqueTecnicos,
        programas: uniqueProgramas,
        status: fallbackStatus,
    }
}
