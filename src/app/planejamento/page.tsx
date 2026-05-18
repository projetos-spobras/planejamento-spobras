import { createClient } from "@/lib/supabase/server"
import { PlanejamentoClient } from "./_components/client-page"
import { getEmpreendimentos } from "@/lib/api-client"
import { getPlanningKPIs, getPlanningServicos } from "./queries"

export const dynamic = "force-dynamic"

interface PageProps {
    searchParams: {
        page?: string
        pageSize?: string
        search?: string
        origem?: string
        semContrato?: string
    }
}

export default async function PlanejamentoPage({ searchParams }: PageProps) {
    const supabase = await createClient()

    const page = Number(searchParams.page ?? 1)
    const pageSize = Number(searchParams.pageSize ?? 20)
    const search = searchParams.search ?? ''
    const origem = searchParams.origem === 'all' ? '' : (searchParams.origem ?? '')
    const semContrato = searchParams.semContrato === 'true'

    // KPIs — conjunto completo, independente da paginação
    // Empreendimentos (para mapeamento)
    // Lista paginada
    const [kpis, { data: empreendimentosData }, listaResult] = await Promise.all([
        getPlanningKPIs(),
        getEmpreendimentos(supabase),
        getPlanningServicos(supabase, { page, pageSize, search, origem, semContrato })
    ])

    // Pre-build Maps para enriquecimento O(1)
    const empMap = new Map((empreendimentosData || []).map((e: any) => [e.id, e]))
    const fasesMap = new Map<string, any[]>()
    listaResult.fases?.forEach((f: any) => {
        const arr = fasesMap.get(f.servico_id) || []
        arr.push(f)
        fasesMap.set(f.servico_id, arr)
    })
    const distMap = new Map<string, any[]>()
    listaResult.distribuicoes?.forEach((d: any) => {
        const arr = distMap.get(d.servico_id) || []
        arr.push(d)
        distMap.set(d.servico_id, arr)
    })

    const enrichedServicos = listaResult.servicos?.map((s: any) => ({
        ...s,
        empreendimento_nome: (empMap.get(s.empreendimento_id) as any)?.nome || "Desconhecido",
        fases: fasesMap.get(s.id) || [],
        distribuicao_financeira: distMap.get(s.id) || []
    })) || []

    const finalListaResult = {
        ...listaResult,
        servicos: enrichedServicos
    }

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <PlanejamentoClient
                lista={finalListaResult}
                currentPage={page}
                pageSize={pageSize}
                search={search}
                origem={origem}
                semContrato={semContrato}
                empreendimentos={empreendimentosData || []}
                kpiValorEstimadoGlobal={kpis.kpiValorEstimadoGlobal}
                kpiTotalContratadoGlobal={kpis.kpiTotalContratadoGlobal}
                totalServicosGlobal={kpis.totalServicosGlobal}
                servicosComContratoGlobal={kpis.servicosComContratoGlobal}
                totalContratosVinculadosGlobal={kpis.totalContratosVinculadosGlobal}
                kpiAContratarGlobal={kpis.kpiAContratarGlobal}
                qtdAContratarGlobal={kpis.qtdAContratarGlobal}
                kpiTotalPlanejadoGlobal={kpis.kpiTotalPlanejadoGlobal}
                kpiMedidoGlobal={kpis.kpiMedidoGlobal}
                kpiEmpenhadoGlobal={kpis.kpiEmpenhadoGlobal}
                kpiLiquidadoGlobal={kpis.kpiLiquidadoGlobal}
                contratosPlanejadosCountGlobal={kpis.contratosPlanejadosCountGlobal}
                contratosPlanejadosValorGlobal={kpis.contratosPlanejadosValorGlobal}
                contratosSemPlanoValorGlobal={kpis.contratosSemPlanoValorGlobal}
                estimadosSemPlanoValorGlobal={kpis.estimadosSemPlanoValorGlobal}
                contratosAPlanejarCountGlobal={kpis.contratosAPlanejarCountGlobal}
            />
        </div>
    )
}
