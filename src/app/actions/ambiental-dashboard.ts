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
            empreendimentos (
                id,
                nome,
                codigo,
                ambiental_empreendimentos (
                    id,
                    tecnico_gma,
                    sei_processo,
                    status,
                    estagio_contratacao,
                    prazo,
                    percentual_conclusao,
                    programa,
                    observacoes,
                    valor_contrato,
                    ambiental_licenciamentos (
                        tipo,
                        status,
                        observacao
                    )
                )
            )
        `)
        .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])

    console.log('[Ambiental] servicos carregados com sucesso:', servicos?.length)

    if (error) {
        console.error("Error fetching services for environmental dashboard:", error)
        return { data: [], totalCount: 0, indicators: { totalAtivos: 0, pendentes: 0, vencidos: 0, distribuicao: {} } }
    }

    // 2. Group by empreendimento_id
    const groups: Record<string, any> = {}
    for (const s of (servicos || [])) {
        if (!s.empreendimento_id || !s.empreendimentos) continue
        const empId = s.empreendimento_id
        
        if (!groups[empId]) {
            const emp = s.empreendimentos
            const amb = emp.ambiental_empreendimentos?.[0] || null
            
            groups[empId] = {
                id: amb?.id || emp.id, // Fallback to empreendimento ID so we can navigate to detail page
                empreendimento_id: emp.id,
                nome_empreendimento: emp.nome,
                codigo_obra: emp.codigo,
                empreendimento: {
                    id: emp.id,
                    nome: emp.nome,
                    codigo: emp.codigo
                },
                sei_processo: amb?.sei_processo || null,
                tecnico_gma: amb?.tecnico_gma || null,
                tipo_servico_list: [] as string[],
                status: amb?.status || 'Não Iniciado',
                estagio_contratacao: amb?.estagio_contratacao || null,
                prazo: amb?.prazo || null,
                percentual_conclusao: amb?.percentual_conclusao || 0,
                programa: amb?.programa || null,
                valor_contrato: amb?.valor_contrato || 0,
                licenciamentos: amb?.ambiental_licenciamentos ? [...amb.ambiental_licenciamentos] : [],
                updated_at: s.updated_at || null,
                total_servicos: 0
            }
        }
        
        // Count total services
        groups[empId].total_servicos += 1

        // Merge service-level licenses
        if (s.ambiental_licenciamentos && s.ambiental_licenciamentos.length > 0) {
            const existingTypes = new Set(groups[empId].licenciamentos.map((l: any) => l.tipo))
            s.ambiental_licenciamentos.forEach((lic: any) => {
                if (!existingTypes.has(lic.tipo)) {
                    groups[empId].licenciamentos.push(lic)
                }
            })
        }
        
        // Keep track of latest updated_at among services
        if (s.updated_at && (!groups[empId].updated_at || s.updated_at > groups[empId].updated_at)) {
            groups[empId].updated_at = s.updated_at
        }
        
        // Collect types/subtypes
        if (s.subtipo_ambiental) {
            for (const sub of s.subtipo_ambiental) {
                if (!groups[empId].tipo_servico_list.includes(sub)) {
                    groups[empId].tipo_servico_list.push(sub)
                }
            }
        }
    }

    // Convert groups to array and format tipo_servico
    let groupedArray = Object.values(groups).map(g => {
        const { tipo_servico_list, ...rest } = g
        return {
            ...rest,
            tipo_servico: tipo_servico_list.join(', '),
            tipo_servico_raw: tipo_servico_list // keep as array for filtering
        }
    })

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

    // 4. Calculate Indicators (based on total grouped list, prior to filtering to represent overall GMA status)
    const allGrouped = Object.values(groups)
    
    // Total ativos (status != Concluído, Finalizado, Encerrado)
    const totalAtivos = allGrouped.filter(g => 
        !['Concluído', 'Finalizado', 'Encerrado'].includes(g.status)
    ).length

    // Com licenciamento pendente (pelo menos um 'P')
    const pendentes = allGrouped.filter(g => 
        g.licenciamentos.some((l: any) => l.status === 'P')
    ).length

    // Em andamento com prazo vencido
    const hoje = new Date().toISOString().split('T')[0]
    const vencidos = allGrouped.filter(g => 
        g.status === 'Em andamento' && g.prazo && g.prazo < hoje
    ).length

    // Distribuição por tipo de serviço
    const distribuicao: Record<string, number> = {}
    allGrouped.forEach(g => {
        g.tipo_servico_list.forEach((t: string) => {
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
        { data: tecnicos },
        { data: programas },
        { data: status }
    ] = await Promise.all([
        supabase.from('ambiental_empreendimentos').select('tecnico_gma').not('tecnico_gma', 'is', null),
        supabase.from('ambiental_empreendimentos').select('programa').not('programa', 'is', null),
        supabase.from('ambiental_empreendimentos').select('status').not('status', 'is', null),
    ])

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
