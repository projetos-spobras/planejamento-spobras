import { createClient } from "@/lib/supabase/server"
import { getContratos, getContratoEmpreendimentos } from "@/lib/api-client"

export async function getPlanningKPIs() {
    const supabase = await createClient()

    // 1. Busca todos os serviços da tabela servicos
    const { data: servicos, count: totalServicos } = await supabase
        .from("servicos")
        .select("id, contrato_id, empreendimento_id, valor_total", { count: 'exact' })

    if (!servicos) {
        return {
            kpiValorEstimadoGlobal: 0,
            totalServicosGlobal: 0
        }
    }

    // 2. Busca todos os contratos e vínculos
    const [contratos, links] = await Promise.all([
        getContratos(supabase),
        getContratoEmpreendimentos(supabase)
    ])
    
    // 3. Busca todas as distribuições financeiras
    const { data: distribuicoes } = await supabase
        .from('distribuicao_financeira')
        .select('servico_id, valor')

    // Mapa de valor planejado acumulado por serviço
    const planoPorServico = new Map<string, number>()
    distribuicoes?.forEach(d => {
        const atual = planoPorServico.get(d.servico_id) || 0
        planoPorServico.set(d.servico_id, atual + (Number(d.valor) || 0))
    })

    // --- CÁLCULO: Serviços "A Contratar" (Card 3) ---
    // Regra: Empreendimento não possui nenhum contrato vinculado
    const idsEmpreendimentosComContrato = new Set(links.map(l => l.empreendimento_id))
    const servicosSemContrato = servicos.filter(s => !idsEmpreendimentosComContrato.has(s.empreendimento_id))

    const kpiAContratarGlobal = servicosSemContrato.reduce((acc, s) => acc + (Number(s.valor_total) || 0), 0)
    const qtdAContratarGlobal = servicosSemContrato.length

    // --- CÁLCULO: Valor total dos contratos (Card 2) ---
    const somaTotalContratos = contratos.reduce((acc, c) => {
        return acc + (Number(c.valor_original) || 0) + 
                     (Number(c.valor_aditamento) || 0) + 
                     (Number(c.valor_reajuste) || 0)
    }, 0)
    const kpiTotalContratadoGlobal = somaTotalContratos
    const totalContratosVinculadosGlobal = new Set(links.map(l => l.contrato_id)).size

    // --- CÁLCULO: Planejamento Financeiro (Card 4) ---
    
    // 4.1 Valor Principal (Total Planejado)
    const kpiTotalPlanejadoGlobal = distribuicoes?.reduce((acc, d) => acc + (Number(d.valor) || 0), 0) || 0

    // 4.2 Contratos Planejados (Valor e Contagem)
    const contratoIdsComPlano = new Set<string>()
    const contratosPlanejadosValorGlobal = servicos
        .filter(s => !!s.contrato_id)
        .reduce((acc, s) => {
            const valorPlano = planoPorServico.get(s.id) || 0
            if (valorPlano > 0) contratoIdsComPlano.add(s.contrato_id!)
            return acc + valorPlano
        }, 0)
    const contratosPlanejadosCountGlobal = contratoIdsComPlano.size

    // 4.3 Contratos Sem Plano (Saldo)
    const contratosSemPlanoValorGlobal = Math.max(0, kpiTotalContratadoGlobal - contratosPlanejadosValorGlobal)
    const contratosAPlanejarCountGlobal = contratos.length - contratosPlanejadosCountGlobal

    // 4.4 Estimados Sem Plano (Saldo)
    const planejadoServicosSemContrato = servicosSemContrato.reduce((acc, s) => acc + (planoPorServico.get(s.id) || 0), 0)
    const estimadosSemPlanoValorGlobal = Math.max(0, kpiAContratarGlobal - planejadoServicosSemContrato)

    // --- INDICADOR FINAL: Valor Estimado (Card 1) ---
    const kpiValorEstimadoGlobal = kpiAContratarGlobal + kpiTotalContratadoGlobal

    // --- CÁLCULO: Execução Realizada (Novos KPIs para Gráfico de Sumário) ---
    const { data: medicoes } = await supabase
        .from('medicoes')
        .select('valor_p0, valor_reajuste, valor_total')
    
    const { data: empenhos } = await supabase
        .from('empenhos')
        .select('valor, valor_liquidado')

    const kpiMedidoGlobal = medicoes?.reduce((acc, m) => acc + (Number(m.valor_p0) || 0) + (Number(m.valor_reajuste) || 0), 0) || 0
    const kpiEmpenhadoGlobal = empenhos?.reduce((acc, e) => acc + (Number(e.valor) || 0), 0) || 0
    const kpiLiquidadoGlobal = empenhos?.reduce((acc, e) => acc + (Number(e.valor_liquidado) || 0), 0) || 0

    return {
        kpiValorEstimadoGlobal,
        kpiTotalContratadoGlobal,
        kpiAContratarGlobal,
        kpiTotalPlanejadoGlobal,
        kpiMedidoGlobal,
        kpiEmpenhadoGlobal,
        kpiLiquidadoGlobal,
        totalServicosGlobal: totalServicos || 0,
        servicosComContratoGlobal: (totalServicos || 0) - qtdAContratarGlobal,
        qtdAContratarGlobal,
        totalContratosVinculadosGlobal,
        contratosPlanejadosCountGlobal,
        contratosPlanejadosValorGlobal,
        contratosSemPlanoValorGlobal,
        estimadosSemPlanoValorGlobal,
        contratosAPlanejarCountGlobal
    }
}

export interface GetPlanningServicosParams {
    page: number
    pageSize: number
    search?: string
    origem?: string
    semContrato?: boolean
}

export async function getPlanningServicos(supabase: any, params: GetPlanningServicosParams) {
    const { page, pageSize, search, origem, semContrato } = params
    const from = (page - 1) * pageSize
    const to = from + pageSize - 1

    let query = supabase
        .from('servicos')
        .select(`
            *
        `, { count: 'exact' })
        .order('created_at', { ascending: false })
        .range(from, to)

    if (search) {
        query = query.or(`descricao.ilike.%${search}%,id.ilike.%${search}%`)
    }

    if (origem) {
        if (origem === 'manual') {
            query = query.is('api_source_id', null)
        } else if (origem === 'automatic') {
            query = query.not('api_source_id', 'is', null)
        }
    }

    if (semContrato) {
        query = query.is('contrato_id', null)
    }

    const { data: servicos, count, error } = await query

    if (error) {
        console.error("Error fetching paginated servicos:", error)
        return { servicos: [], total: 0, page, pageSize, totalPages: 0, fases: [], distribuicoes: [] }
    }

    let fases: any[] = []
    let distribuicoes: any[] = []

    if (servicos && servicos.length > 0) {
        const servicoIds = servicos.map((s: any) => s.id)

        const [fasesResult, distResult] = await Promise.all([
            supabase
                .from("planejamento_fases")
                .select("*")
                .in("servico_id", servicoIds)
                .order("created_at", { ascending: false }),
            supabase
                .from("distribuicao_financeira")
                .select("*")
                .in("servico_id", servicoIds),
        ])
        
        fases = fasesResult.data || []
        distribuicoes = distResult.data || []
    }

    return {
        servicos: servicos || [],
        total: count || 0,
        page,
        pageSize,
        totalPages: Math.ceil((count || 0) / pageSize),
        fases,
        distribuicoes
    }
}
