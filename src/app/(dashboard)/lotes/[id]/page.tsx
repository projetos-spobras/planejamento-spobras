
import { supabase } from "@/lib/supabase"
import { notFound } from "next/navigation"
import { LoteDetails } from "@/components/relationships/lote-details"
import { BackButton } from "@/components/ui/back-button"

export const revalidate = 0

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function LoteDetailsPage({ params }: PageProps) {
    const { id } = await params

    const { data: lote } = await supabase
        .from("lotes")
        .select("*, contrato:contratos(id, numero, contratada)")
        .eq("id", id)
        .single()

    if (!lote) {
        notFound()
    }

    let links: any[] | null = []

    if (lote.contrato_id) {
        const { data: linksData } = await supabase
            .from("empreendimentos_contratos")
            .select(`
                id,
                empreendimento_id,
                lote_id,
                empreendimento:empreendimentos (
                    id,
                    nome
                )
            `)
            .eq("contrato_id", lote.contrato_id)
        links = linksData
    }

    const empreendimentosDoContrato = links?.map((link: any) => ({
        id: link.empreendimento.id,
        nome: link.empreendimento.nome,
        lote_id: link.lote_id
    })) || []

    // Fetch direct empenhos
    const { data: empenhos } = await supabase
        .from("empenhos")
        .select("*")
        .eq("tipo_vinculo", "lote")
        .eq("vinculo_id", id)

    // [M6] Buscar avanço físico de cada empreendimento atribuído ao lote
    const assignedEmps = empreendimentosDoContrato.filter(e => e.lote_id === id)

    const avancoPromises = assignedEmps.map(emp =>
        Promise.all([
            supabase.rpc('get_avanco_fisico', { p_empreendimento_id: emp.id }),
            supabase.rpc('get_valor_medido_total', { p_empreendimento_id: emp.id }),
        ]).then(([{ data: pct }, { data: val }]) => ({
            id: emp.id,
            percentualExecutado: Number(pct ?? 0),
            valorMedidoTotal: Number(val ?? 0),
        }))
    )

    const avancosPorEmp = await Promise.all(avancoPromises)

    // Média ponderada consolidada: Σ(pct * valorMedido) / Σ(valorMedido)
    const totalMedido = avancosPorEmp.reduce((s, a) => s + a.valorMedidoTotal, 0)
    const avancoConsolidado = totalMedido > 0
        ? avancosPorEmp.reduce((s, a) => s + a.percentualExecutado * a.valorMedidoTotal, 0) / totalMedido
        : 0

    return (

        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/lotes" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhes do Lote</h1>
            </div>
            <LoteDetails
                lote={lote}
                contrato={lote.contrato}
                empreendimentosDoContrato={empreendimentosDoContrato}
                empenhos={empenhos || []}
                avancosPorEmp={avancosPorEmp}
                avancoConsolidado={avancoConsolidado}
            />
        </div>
    )
}
