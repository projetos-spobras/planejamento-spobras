
import { createClient } from "@/lib/supabase/server"
import { PlanejamentoClient } from "./_components/client-page"
import { PlanejamentoFase } from "@/types"

export const revalidate = 0

export default async function PlanejamentoPage() {
    const supabase = await createClient()
    // Join with empreendimentos to get names
    // Supabase JS client doesn't support complex joins in one go easily without foreign key definition on the client side knowing about it?
    // Actually it does if relational key is there.
    // .select("*, empreendimentos(nome)")

    // Note: ensure 'empreendimentos' matches the foreign key relationship name in supabase.
    // If not, we might need to fetch separately and map. 
    // Assuming 'empreendimentos' table is referenced by 'empreendimento_id'.
    // The relationship name is usually the table name or inferred.

    // Let's try to fetch with join. If it fails, I'll fetch separately.
    // Safest -> Fetch separately and map, unless I am sure of relation name.

    // Using separate fetch is safer for this prototype.
    const { data: planejamentos } = await supabase
        .from("planejamento_fases")
        .select("*")
        .order("created_at", { ascending: false })

    const { data: empreendimentos } = await supabase
        .from("empreendimentos")
        .select("id, nome")

    // Map empreendimento name to planejamento
    const enrichedPlanejamentos = planejamentos?.map(p => ({
        ...p,
        empreendimento: empreendimentos?.find(e => e.id === p.empreendimento_id)
    }))

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <PlanejamentoClient
                data={(enrichedPlanejamentos as any) || []}
                empreendimentos={(empreendimentos as any) || []}
            />
        </div>
    )
}
