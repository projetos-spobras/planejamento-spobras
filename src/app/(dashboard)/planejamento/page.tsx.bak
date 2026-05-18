import { createClient } from "@/lib/supabase/server"
import { PlanejamentoClient } from "./_components/client-page"
import { getEmpreendimentos } from "@/lib/api-client"

export const dynamic = "force-dynamic"

const PAGE_SIZE = 200 // Limita carga inicial para não travar o TTFB

export default async function PlanejamentoPage() {
    const supabase = await createClient()

    // Busca as primeiras PAGE_SIZE linhas de cada tabela em paralelo.
    // Os dados de servicos, fases e distribuições são correlacionados pelo servico_id.
    const [servicosResult, { data: empreendimentosData }] = await Promise.all([
        supabase
            .from("servicos")
            .select("*", { count: 'exact' })
            .order("created_at", { ascending: false })
            .range(0, PAGE_SIZE - 1),
        getEmpreendimentos(supabase),
    ])

    const servicos = servicosResult.data || []
    const totalServicos = servicosResult.count || 0

    // Log counts for monitoring
    console.log(`[Planejamento] Initial load: ${servicos.length}/${totalServicos} serviços`)

    let fases: any[] = []
    let distribuicoes: any[] = []

    if (servicos.length > 0) {
        const servicoIds = servicos.map(s => s.id)

        // Busca fases e distribuições somente para os serviços na página atual
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

    // Pre-build Maps para enriquecimento O(1)
    const empMap = new Map((empreendimentosData || []).map((e: any) => [e.id, e]))
    const fasesMap = new Map<string, any[]>()
    fases?.forEach(f => {
        const arr = fasesMap.get(f.servico_id) || []
        arr.push(f)
        fasesMap.set(f.servico_id, arr)
    })
    const distMap = new Map<string, any[]>()
    distribuicoes?.forEach(d => {
        const arr = distMap.get(d.servico_id) || []
        arr.push(d)
        distMap.set(d.servico_id, arr)
    })

    const enrichedServicos = servicos?.map(s => ({
        ...s,
        empreendimento_nome: (empMap.get(s.empreendimento_id) as any)?.nome || "Desconhecido",
        fases: fasesMap.get(s.id) || [],
        distribuicao_financeira: distMap.get(s.id) || []
    })) || []

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <PlanejamentoClient
                servicos={enrichedServicos}
                empreendimentos={empreendimentosData || []}
                totalServicos={totalServicos}
            />
        </div>
    )
}
