import { createClient } from "@/lib/supabase/server"
import { notFound } from "next/navigation"
import { LoteDetailsComponent as LoteDetails } from "@/components/relationships/lote-details"
import { BackButton } from "@/components/ui/back-button"
import { getContratos, getContratoEmpreendimentosPorContrato, getEmpreendimentoNamesMap } from "@/lib/api-client"

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function LotePage({ params }: PageProps) {
    const { id } = await params
    const supabase = await createClient()

    // 1. Busca o lote
    const { data: lote, error: loteError } = await supabase
        .from("lotes")
        .select("*")
        .eq("id", id)
        .single()

    if (loteError || !lote) {
        return notFound()
    }

    // 2. Busca os empreendimentos vinculados a este lote no Supabase
    //    Usamos o Supabase apenas para saber quais UUIDs existem (para serviços e avanço físico)
    const { data: links } = await supabase
        .from("empreendimentos_contratos")
        .select(`
            id,
            lote_id,
            contrato_id,
            empreendimento:empreendimentos (
                id,
                nome,
                codigo
            )
        `)
        .eq("lote_id", id)

    // 3. Resolve o contrato principal via API Legada
    const allRawContratos = await getContratos(supabase)
    const loteContrato = lote.contrato_id
        ? allRawContratos.find((c: any) => c.id === lote.contrato_id)
        : null
    const realLegacyContratoId = loteContrato?._originalId ? String(loteContrato._originalId) : null

    // 4. Busca os nomes de todos os empreendimentos (para resolver IDs legados)
    const namesMap = await getEmpreendimentoNamesMap()

    // 5. Busca TODOS os empreendimentos do contrato diretamente da API Legada
    //    /api/ContratoEmpreendimentos/por-contrato/{id} → fonte da verdade para IDs e nomes
    //    Todos esses empreendimentos pertencem ao lote (pois o lote tem este contrato)
    let apiEmpreendimentos: any[] = []
    if (realLegacyContratoId) {
        apiEmpreendimentos = await getContratoEmpreendimentosPorContrato(realLegacyContratoId)
    }

    // 5. Monta empreendimentosDoContrato diretamente dos dados da API (sem filtro por Supabase)
    //    O campo "id" usa o ID legado da API como identificador único para dados financeiros
    const seenApiIds = new Set<string>()
    const empreendimentosDoContrato: any[] = []

    apiEmpreendimentos.forEach((apiEmp: any) => {
        const apiId = String(apiEmp.idEmpreendimento || '').trim()
        if (!apiId || seenApiIds.has(apiId)) return
        seenApiIds.add(apiId)

        // Tenta resolver o nome oficial via namesMap
        const nomeResolvido = namesMap[apiId] || apiEmp.nmEmpreendimento || `Obra ${apiId}`

        empreendimentosDoContrato.push({
            id: apiId,                                          // ID legado da API — chave de rastreamento financeiro
            nome: nomeResolvido,                                // Nome oficial da API resolvido
            codigo: apiId,
            apiId: apiId,
            lote_id: id                                         // Todos pertencem ao lote
        })
    })

    // 6. Deduplicação de contratos (IDs legados)
    const uniqueContratoOriginalIds = new Map<string, any>()
    if (lote.contrato_id) {
        const c = allRawContratos.find(c => c.id === lote.contrato_id)
        if (c?._originalId) {
            uniqueContratoOriginalIds.set(String(c._originalId), c)
        }
    }
    links?.forEach(l => {
        if (l.contrato_id) {
            const c = allRawContratos.find(c => c.id === l.contrato_id)
            if (c?._originalId) {
                uniqueContratoOriginalIds.set(String(c._originalId), c)
            }
        }
    })
    const contratos_com_originalId = Array.from(uniqueContratoOriginalIds.entries()).map(([oid, c]) => ({
        id: c.id,
        numero: c.numero,
        _originalId: oid
    }))

    // 7. Avanço Físico via Supabase RPC (usa UUIDs do Supabase — separado do pipeline financeiro)
    const empUuidList = (links || [])
        .map(l => l.empreendimento?.id)
        .filter(Boolean) as string[]

    const avancosPorEmp = await Promise.all(
        empUuidList.map(empId =>
            Promise.all([
                supabase.rpc('get_avanco_fisico', { p_empreendimento_id: empId }),
                supabase.rpc('get_valor_medido_total', { p_empreendimento_id: empId }),
            ]).then(([{ data: pct }, { data: val }]) => ({
                id: empId,
                percentualExecutado: Number(pct ?? 0),
                valorMedidoTotal: Number(val ?? 0),
            }))
        )
    )

    // 8. Serviços via Supabase (usa UUIDs do Supabase)
    let servicos: any[] = []
    if (empUuidList.length > 0) {
        const { data: servicosData } = await supabase
            .from('servicos')
            .select('*')
            .in('empreendimento_id', empUuidList)
            .order('created_at', { ascending: false })

        if (servicosData) {
            servicos = servicosData.map(s => ({
                ...s,
                contrato: s.contrato_id ? allRawContratos.find((c: any) => c.id === s.contrato_id) : null
            }))
        }
    }

    const lotContratoForDialog = loteContrato
        ? [{ id: (loteContrato as any).id, numero: (loteContrato as any).numero, contratada: (loteContrato as any).contratada, valor_total: (loteContrato as any).valor_total ?? null }]
        : []

    return (
        <div className="space-y-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/lotes" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhes do Lote</h1>
            </div>
            <LoteDetails
                lote={{
                    id: lote.id,
                    nome: lote.nome,
                    tipo: lote.tipo,
                    descricao: lote.descricao,
                    contrato_id: lote.contrato_id
                }}
                contrato={loteContrato}
                empreendimentosDoContrato={empreendimentosDoContrato}
                avancosPorEmp={avancosPorEmp}
                servicos={servicos}
                contratos={lotContratoForDialog}
                contratosComOriginalId={contratos_com_originalId}
                globalNamesMap={namesMap}
            />
        </div>
    )
}
