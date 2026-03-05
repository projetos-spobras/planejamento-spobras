
import { createClient } from "@/lib/supabase/server"
import { EmpenhosClient } from "./_components/client-page"
import { getEmpreendimentos, getContratos } from "@/lib/api-client"
import { Empenho } from "@/types"

export const revalidate = 0

export default async function EmpenhosPage() {
    const supabase = await createClient()

    const { data: empenhos } = await supabase
        .from("empenhos")
        .select("*")
        .order("created_at", { ascending: false })

    // Fetch linkable items using API
    const [empreendimentos, contratos] = await Promise.all([
        getEmpreendimentos(supabase),
        getContratos(supabase)
    ])

    const { data: lotes } = await supabase
        .from("lotes")
        .select("id, nome")

    const linkableItems: { id: string, label: string, type: 'empreendimento' | 'contrato' | 'lote' }[] = [
        ...(empreendimentos?.map(e => ({ id: e.id, label: e.nome, type: 'empreendimento' as const })) || []),
        ...(contratos?.map(c => ({ id: c.id, label: `Contrato ${c.numero}`, type: 'contrato' as const })) || []),
        ...(lotes?.map(l => ({ id: l.id, label: `Lote ${l.nome}`, type: 'lote' as const })) || [])
    ]

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <EmpenhosClient
                data={(empenhos as Empenho[]) || []}
                linkableItems={linkableItems}
            />
        </div>
    )
}
