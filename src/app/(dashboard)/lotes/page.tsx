
import { createClient } from "@/lib/supabase/server"
import { LotesClient } from "./_components/client-page"

export const revalidate = 0

export default async function LotesPage() {
    const supabase = await createClient()
    const [minLotes, minContratos] = await Promise.all([
        supabase
            .from('lotes')
            .select('*, contratos (numero)')
            .order('created_at', { ascending: false }),
        supabase
            .from('contratos')
            .select('id, numero, contratada')
            .order('numero', { ascending: true })
    ])

    if (minLotes.error || minContratos.error) {
        return <div>Erro ao carregar dados</div>
    }

    return <LotesClient
        data={minLotes.data as any[]}
        contratos={minContratos.data as any[]}
    />
}
