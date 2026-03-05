
import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { EmpreendimentoDetails } from "@/components/relationships/empreendimento-details"
import { BackButton } from "@/components/ui/back-button"
import { calculateFinancialIndicators } from "@/lib/financial-utils"
import { getEmpreendimentos, getContratos, getContratoEmpreendimentos } from "@/lib/api-client"

export const revalidate = 0

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function EmpreendimentoDetailsPage({ params }: PageProps) {
    const supabase = await createClient()
    const { id } = await params

    const allEmpreendimentos = await getEmpreendimentos(supabase)
    const empreendimento = allEmpreendimentos.find((e: any) => e.id === id)

    if (!empreendimento) {
        notFound()
    }

    // Fetch all available contracts for the dialog
    const allContratos = await getContratos(supabase)

    // Fetch linked contracts from Supabase to preserve user-assigned lotes
    const { data: rawLinks } = await supabase
        .from("empreendimentos_contratos")
        .select("id, contrato_id, lote_id")
        .eq("empreendimento_id", id)

    // Fetch all lotes for the dialog
    const { data: allLotes } = await supabase
        .from("lotes")
        .select("id, nome, contrato_id")

    // Hydrate linkedContracts with API contract data and Supabase lote data
    let linkedContracts = (rawLinks || []).map((link: any) => {
        const c = allContratos.find((c: any) => c.id === link.contrato_id);
        const l = allLotes?.find((lote: any) => lote.id === link.lote_id);
        return {
            id: link.id,
            contrato_id: link.contrato_id,
            lote_id: link.lote_id,
            contrato: c ? {
                id: c.id,
                numero: c.numero,
                tipo: c.tipo,
                contratada: c.contratada,
                valor_total: c.valor_total
            } : {
                id: link.contrato_id,
                numero: 'Desconhecido',
                tipo: '-',
                contratada: '-',
                valor_total: 0
            },
            lote: l ? {
                id: l.id,
                nome: l.nome
            } : null
        }
    });

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

    // Fetch servicos: by empreendimento_id (direct) + by contrato_id (contract-linked), deduped
    const contratoIds = linkedContracts?.map(c => c.contrato_id) || []

    const [{ data: servicosByEmp }, { data: servicosByContrato }] = await Promise.all([
        supabase
            .from("servicos")
            .select("*")
            .eq("empreendimento_id", id)
            .order("created_at", { ascending: false }),
        contratoIds.length > 0
            ? supabase
                .from("servicos")
                .select("*")
                .in("contrato_id", contratoIds)
                .order("created_at", { ascending: false })
            : Promise.resolve({ data: [] as any[] }),
    ])

    // Merge and deduplicate by id
    const allServicos = [...(servicosByEmp || []), ...(servicosByContrato || [])]
    const seen = new Set<string>()
    const servicosSemContratosLocalizados = allServicos.filter(s => {
        if (seen.has(s.id)) return false
        seen.add(s.id)
        return true
    })

    // Hydrate contratos for all servicos
    const servicos = servicosSemContratosLocalizados.map(s => ({
        ...s,
        contrato: s.contrato_id ? allContratos.find((c: any) => c.id === s.contrato_id) : null
    }))



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
