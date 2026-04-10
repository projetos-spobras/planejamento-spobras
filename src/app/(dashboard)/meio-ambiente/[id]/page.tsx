import { notFound } from "next/navigation"
import { getEmpreendimentoAmbientalDetails } from "@/app/actions/meio-ambiente-detalhes"
import { MeioAmbienteDetalhesCockpit } from "./_components/detalhes-cockpit"
import { createClient } from "@/lib/supabase/server"

interface PageProps {
    params: { id: string }
}

export default async function MeioAmbienteDetalhesPage(props: PageProps) {
    const params = await props.params
    const empreendimentoId = params.id

    const data = await getEmpreendimentoAmbientalDetails(empreendimentoId)

    if (!data) {
        notFound()
    }

    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    return (
        <MeioAmbienteDetalhesCockpit 
            data={data} 
            currentUserId={user?.id}
        />
    )
}
