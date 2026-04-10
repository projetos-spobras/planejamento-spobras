
import { createClient } from "@/lib/supabase/server"
import { LotesClient } from "./_components/client-page"

export const dynamic = "force-dynamic"

export default async function LotesPage() {
    const supabase = await createClient()

    // Fetch lotes with nested counts and contracts in parallel
    const [lotesRes, contratosRes] = await Promise.all([
        supabase
            .from('lotes')
            .select(`
                *,
                contratos (numero),
                empreendimentos_contratos(count)
            `)
            .order('created_at', { ascending: false }),
        supabase
            .from('contratos')
            .select('id, numero, contratada')
            .order('numero', { ascending: true })
    ])

    if (lotesRes.error || contratosRes.error) {
        return <div>Erro ao carregar dados</div>
    }

    // Map counts to the flat structure expected by the client component
    const enrichedLotes = (lotesRes.data || []).map((lote: any) => ({
        ...lote,
        emp_count: lote.empreendimentos_contratos?.[0]?.count || 0,
    }))

    return <LotesClient
        data={enrichedLotes}
        contratos={contratosRes.data as any[]}
    />
}
