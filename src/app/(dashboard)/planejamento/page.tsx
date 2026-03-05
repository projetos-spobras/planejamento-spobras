
import { createClient } from "@/lib/supabase/server"
import { PlanejamentoClient } from "./_components/client-page"
import { getEmpreendimentos } from "@/lib/api-client"
import { PlanejamentoFase } from "@/types"

export const revalidate = 0

export default async function PlanejamentoPage() {
    const supabase = await createClient()

    const { data: planejamentos } = await supabase
        .from("planejamento_fases")
        .select("*")
        .order("created_at", { ascending: false })

    const empreendimentos = await getEmpreendimentos(supabase);

    // Map empreendimento name to planejamento
    const enrichedPlanejamentos = planejamentos?.map(p => ({
        ...p,
        empreendimento: empreendimentos.find((e: any) => e.id === p.empreendimento_id)
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
