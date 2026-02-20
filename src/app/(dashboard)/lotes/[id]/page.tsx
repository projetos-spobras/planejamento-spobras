
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

    // We need all empreendimentos linked to this contract, to allow assignment to this lote.
    // Query empreendimentos_contratos where contrato_id = lote.contrato_id

    // Note: The structure of response will be list of link objects
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

    // Transform to simple list for the component
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
            />
        </div>
    )
}
