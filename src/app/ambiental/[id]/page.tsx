import { getAmbientalData, canEditAmbiental, getEmpreendimentosSelection } from "@/app/actions/ambiental"
import { notFound } from "next/navigation"
import { AmbientalDetailsClient } from "./_components/ambiental-details-client"
import { BackButton } from "@/components/ui/back-button"

export const dynamic = "force-dynamic"

interface PageProps {
    params: Promise<{ id: string }>
}

export default async function AmbientalDetailsPage({ params }: PageProps) {
    const { id } = await params
    
    const [data, canEdit, allEmpreendimentos] = await Promise.all([
        getAmbientalData(id),
        canEditAmbiental(),
        getEmpreendimentosSelection()
    ])

    if (!data || !data.empreendimento) {
        notFound()
    }

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center gap-4">
                <BackButton fallbackHref="/ambiental" />
                <h1 className="text-2xl font-bold tracking-tight">Detalhe do Registro Ambiental</h1>
            </div>
            
            <AmbientalDetailsClient 
                initialData={data} 
                canEdit={canEdit}
                allEmpreendimentos={allEmpreendimentos}
            />
        </div>
    )
}
