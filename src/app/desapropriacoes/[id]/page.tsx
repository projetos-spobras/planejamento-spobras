import { notFound } from "next/navigation"
import { getEmpreendimentoDesapropriacoes } from "@/app/actions/desapropriacoes-detalhes"
import { DesapropriacaoDetalhesCockpit } from "./_components/detalhes-cockpit"
import { createClient } from "@/lib/supabase/server"

interface PageProps {
    params: { id: string }
    searchParams: { subtipo?: string }
}

export default async function ServicoDetalhesPage(props: PageProps) {
    const params = await props.params
    const empreendimentoId = params.id

    const data = await getEmpreendimentoDesapropriacoes(empreendimentoId)

    if (!data) {
        notFound()
    }

    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    return (
        <DesapropriacaoDetalhesCockpit 
            data={data} 
            currentUserId={user?.id}
        />
    )
}
