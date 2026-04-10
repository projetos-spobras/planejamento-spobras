
import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { LoteDetails } from "@/components/relationships/lote-details"
import { BackButton } from "@/components/ui/back-button"

export const dynamic = "force-dynamic"

interface PageProps {
    params: Promise<{ id: string }>
}

import { getContratos } from "@/lib/api-client"

export default async function LoteDetailsPage({ params }: PageProps) {
    const supabase = await createClient()
    const { id } = await params

    const { data: lote } = await supabase
        .from("lotes")
        .select("*")
        .eq("id", id)
        .single()

    if (!lote) {
        notFound()
    }

    if (lote.contrato_id) {
        const allContratos = await getContratos(supabase);
        lote.contrato = allContratos.find((c: any) => c.id === lote.contrato_id) || null;
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

    let servicos: any[] = []
    const assignedEmpIds = assignedEmps.map(e => e.id)
    if (assignedEmpIds.length > 0) {
        const { data: servicosData } = await supabase
            .from('servicos')
            .select('*')
            .in('empreendimento_id', assignedEmpIds)
            .order('created_at', { ascending: false })

        if (servicosData) {
            const allContratos = await getContratos(supabase)
            servicos = servicosData.map(s => ({
                ...s,
                contrato: s.contrato_id ? allContratos.find((c: any) => c.id === s.contrato_id) : null
            }))
        }
    }

    // [F2] Contratos disponíveis para o dialog (o contrato do lote)
    const lotContratoForDialog = lote.contrato
        ? [{ id: (lote.contrato as any).id, numero: (lote.contrato as any).numero, contratada: (lote.contrato as any).contratada, valor_total: (lote.contrato as any).valor_total ?? null }]
        : []

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
                servicos={servicos}
                contratos={lotContratoForDialog}
            />
        </div>
    )
}
