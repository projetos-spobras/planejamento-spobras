
import { supabase } from "@/lib/supabase"
import { notFound } from "next/navigation"
import { EmpreendimentoDetails } from "@/components/relationships/empreendimento-details"
import { BackButton } from "@/components/ui/back-button"
import { calculateFinancialIndicators } from "@/lib/financial-utils"

export const revalidate = 0

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function EmpreendimentoDetailsPage({ params }: PageProps) {
    const { id } = await params

    const { data: empreendimento } = await supabase
        .from("empreendimentos")
        .select("*")
        .eq("id", id)
        .single()

    if (!empreendimento) {
        notFound()
    }

    // Fetch linked contracts
    const { data: linkedContracts } = await supabase
        .from("empreendimentos_contratos")
        .select(`
            id,
            contrato_id,
            lote_id,
            contrato:contratos (
                id,
                numero,
                tipo,
                contratada,
                valor_total
            ),
            lote:lotes (
                id,
                nome
            )
        `)
        .eq("empreendimento_id", id)

    // Fetch all available contracts for the dialog
    const { data: allContratos } = await supabase
        .from("contratos")
        .select("id, numero, tipo")
        .order("numero")

    // Fetch all lotes for the dialog (ideally should be filtered by selected contract in client)
    const { data: allLotes } = await supabase
        .from("lotes")
        .select("id, nome, contrato_id")

    // Fetch direct empenhos
    const { data: empenhos } = await supabase
        .from("empenhos")
        .select("*")
        .eq("tipo_vinculo", "empreendimento")
        .eq("vinculo_id", id)

    // Fetch planejamento phases
    const { data: fases } = await supabase
        .from("planejamento_fases")
        .select("*")
        .eq("empreendimento_id", id)
        .order("ordem", { ascending: true })

    // Fetch lookups
    const { data: programas } = await supabase.from("programas").select("*")
    const { data: distritos } = await supabase.from("distritos").select("*")
    const { data: gerencias } = await supabase.from("gerencias").select("*")
    const { data: fasesLookup } = await supabase.from("empreendimento_fases").select("*")

    // Fetch servicos linked to these contracts
    const contratoIds = linkedContracts?.map(c => c.contrato_id) || []

    let servicos: any[] = []
    if (contratoIds.length > 0) {
        const { data: servicosData } = await supabase
            .from("servicos")
            .select("*, contrato:contratos(numero, contratada)")
            .in("contrato_id", contratoIds)
            .order("created_at", { ascending: false })

        servicos = servicosData || []
    }



    // [M6] Buscar avanço físico via RPC
    const [
        { data: avancoData },
        { data: valorMedidoData },
        { data: ultimaMedicaoData }
    ] = await Promise.all([
        supabase.rpc('get_avanco_fisico', { p_empreendimento_id: id }),
        supabase.rpc('get_valor_medido_total', { p_empreendimento_id: id }),
        supabase.rpc('get_ultima_medicao_aprovada', { p_empreendimento_id: id }),
    ])

    const avancoFisico = {
        percentualExecutado: Number(avancoData ?? 0),
        valorMedidoTotal: Number(valorMedidoData ?? 0),
        valorContrato: (linkedContracts ?? []).reduce(
            (sum: number, ec: any) => sum + (ec.contrato?.valor_total ?? 0), 0
        ),
        ultimaMedicao: ultimaMedicaoData as string | null,
    }

    const indicators = calculateFinancialIndicators(
        empreendimento.valor_total,
        empenhos || [],
        fases || []
    )

    return (
        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/empreendimentos" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhes do Empreendimento</h1>
            </div>
            <EmpreendimentoDetails
                empreendimento={empreendimento}
                contratosVinculados={(linkedContracts as any) || []}
                allContratos={(allContratos as any) || []}
                allLotes={(allLotes as any) || []}
                empenhos={empenhos || []}
                fases={fases || []}
                servicos={servicos}
                lookups={{
                    programas: programas || [],
                    distritos: distritos || [],
                    gerencias: gerencias || [],
                    fases: fasesLookup || []
                }}
                indicators={indicators}
                avancoFisico={avancoFisico}
            />
        </div>
    )
}
