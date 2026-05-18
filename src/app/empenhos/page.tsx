
import { createClient } from "@/lib/supabase/server"
import { EmpenhosClient } from "./_components/client-page"
import { getEmpreendimentos, getContratos, getContratoEmpreendimentos, getContractEmpenhos } from "@/lib/api-client"
import { RelatedEmpenho } from "@/components/relationships/related-empenhos-list"

export const dynamic = "force-dynamic"

export default async function EmpenhosPage() {
    const supabase = await createClient()

    // 1. Fetch all basic data
    const [
        { data: empenhosSupabase },
        { data: allEmpreendimentos },
        allContratos,
    ] = await Promise.all([
        supabase.from("empenhos").select("*").order("created_at", { ascending: false }),
        getEmpreendimentos(supabase),
        getContratos(supabase)
    ])

    // 2. Fetch links to find relevant contracts
    const allLinks = await getContratoEmpreendimentos(supabase, allEmpreendimentos, allContratos)
    
    // Identify contracts that are linked to at least one enterprise
    const linkedContractIds = new Set(allLinks.map(l => l.contrato_id))
    const linkedContratos = (allContratos || []).filter(c => linkedContractIds.has(c.id) && c._originalId)

    // 3. Fetch API empenhos for linked contracts (Parallel with concurrency limit)
    const CONCURRENCY_LIMIT = 20
    const apiEmpenhosList: any[] = []
    
    for (let i = 0; i < linkedContratos.length; i += CONCURRENCY_LIMIT) {
        const batch = linkedContratos.slice(i, i + CONCURRENCY_LIMIT)
        const batchResults = await Promise.all(
            batch.map(async (c) => {
                const results = await getContractEmpenhos(supabase, c._originalId)
                return results.map(e => ({
                    ...e,
                    contrato_numero: c.numero,
                    valor_contrato: c.valor_total
                }))
            })
        )
        apiEmpenhosList.push(...batchResults.flat())
    }

    // 4. Combine and hydrate Supabase empenhos
    const contratoMap = new Map((allContratos || []).map(c => [c.id, c]))
    const hydratedSupabaseEmpenhos = (empenhosSupabase || []).map(e => {
        const contrato = e.tipo_vinculo === 'contrato' ? contratoMap.get(e.vinculo_id) : null
        const valor = Number(e.valor || 0)
        const valor_cancelado = Number(e.valor_cancelado || 0)
        const valor_liquidado = Number(e.valor_liquidado || 0)
        const valor_liquido = e.valor_liquido ?? (valor - valor_cancelado)
        const valor_saldo = e.valor_saldo ?? (valor_liquido - valor_liquidado)
        
        return {
            ...e,
            valor,
            valor_cancelado,
            valor_liquidado,
            valor_liquido,
            valor_saldo,
            contrato_numero: contrato?.numero || null,
            valor_contrato: contrato?.valor_total || undefined
        }
    })

    const allEmpenhos: RelatedEmpenho[] = [
        ...hydratedSupabaseEmpenhos,
        ...apiEmpenhosList
    ]

    // 5. Pre-calculate linkable items for manual creation
    const { data: lotes } = await supabase.from("lotes").select("id, nome")

    const linkableItems = [
        ...(allEmpreendimentos?.map(e => ({ id: e.id, label: e.nome, type: 'empreendimento' as const })) || []),
        ...(allContratos?.map(c => ({ id: c.id, label: `Contrato ${c.numero}`, type: 'contrato' as const })) || []),
        ...(lotes?.map(l => ({ id: l.id, label: `Lote ${l.nome}`, type: 'lote' as const })) || [])
    ]

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <EmpenhosClient
                data={allEmpenhos}
                linkableItems={linkableItems}
            />
        </div>
    )
}
