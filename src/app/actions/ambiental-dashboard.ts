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

    // 1. Query Base para a listagem
    let query = supabase
        .from('ambiental_empreendimentos')
        .select(`
            *,
            empreendimento:empreendimentos(nome, id),
            licenciamentos:ambiental_licenciamentos(*)
        `, { count: 'exact' })

    // Filtros de busca (Nome ou SEI)
    if (options.search) {
        // Como o nome do empreendimento está em outra tabela, 
        // ou usamos o campo nome_empreendimento (livre) da ambiental_empreendimentos
        query = query.or(`nome_empreendimento.ilike.%${options.search}%,sei_processo.ilike.%${options.search}%`)
    }

    // Filtros Multiselect
    if (options.tecnicos && options.tecnicos.length > 0) {
        query = query.in('tecnico_gma', options.tecnicos)
    }
    if (options.tiposServico && options.tiposServico.length > 0) {
        query = query.in('tipo_servico', options.tiposServico)
    }
    if (options.status && options.status.length > 0) {
        query = query.in('status', options.status)
    }
    if (options.estagios && options.estagios.length > 0) {
        query = query.in('estagio_contratacao', options.estagios)
    }
    if (options.programas && options.programas.length > 0) {
        query = query.in('programa', options.programas)
    }

    // Paginação
    const from = (page - 1) * pageSize
    const to = from + pageSize - 1
    
    const { data, count, error } = await query
        .order('created_at', { ascending: false })
        .range(from, to)

    if (error) {
        console.error("Error fetching ambiental dashboard data:", error)
        return { data: [], totalCount: 0, indicators: null }
    }

    // 2. Indicadores (Calculados via Queries separadas para precisão total)
    
    // Total ativos (status ≠ Concluído/Finalizado/Encerrado)
    const { count: totalAtivos } = await supabase
        .from('ambiental_empreendimentos')
        .select('*', { count: 'exact', head: true })
        .not('status', 'in', '("Concluído","Finalizado","Encerrado")')

    // Com licenciamento pendente (pelo menos um 'P')
    // Nota: Essa query é um pouco mais complexa pois depende da tabela filha.
    // Buscamos IDs de empreendimentos que tenham pelo menos uma licença P
    const { data: pendentesData } = await supabase
        .from('ambiental_licenciamentos')
        .select('ambiental_empreendimento_id')
        .eq('status', 'P')
    
    const idsPendentes = Array.from(new Set((pendentesData || []).map(l => l.ambiental_empreendimento_id)))
    const countPendentes = idsPendentes.length

    // Em andamento com prazo vencido
    const hoje = new Date().toISOString().split('T')[0]
    const { count: countVencidos } = await supabase
        .from('ambiental_empreendimentos')
        .select('*', { count: 'exact', head: true })
        .eq('status', 'Em andamento')
        .lt('prazo', hoje)

    // Distribuição por tipo de serviço
    const { data: distribuicaoRaw } = await supabase
        .from('ambiental_empreendimentos')
        .select('tipo_servico')
    
    const distribuicao: Record<string, number> = {}
    ;(distribuicaoRaw || []).forEach(item => {
        if (item.tipo_servico) {
            distribuicao[item.tipo_servico] = (distribuicao[item.tipo_servico] || 0) + 1
        }
    })

    return {
        data: data || [],
        totalCount: count || 0,
        indicators: {
            totalAtivos: totalAtivos || 0,
            pendentes: countPendentes,
            vencidos: countVencidos || 0,
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

    return {
        tecnicos: Array.from(new Set((tecnicos || []).map(t => t.tecnico_gma))).sort(),
        programas: Array.from(new Set((programas || []).map(p => p.programa))).sort(),
        status: Array.from(new Set((status || []).map(s => s.status))).sort(),
    }
}
