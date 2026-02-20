import { Suspense } from "react"
import { getGlobalServices, getAllEmpreendimentos } from "./actions"
import { ServicesClientPage } from "./_components/client-page"
import { Skeleton } from "@/components/ui/skeleton"

export default async function ServicosPage() {
    const services = await getGlobalServices()
    const empreendimentos = await getAllEmpreendimentos()

    return (
        <div className="flex-1 space-y-4 p-4 md:p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <h2 className="text-3xl font-bold tracking-tight">Gestão de Serviços</h2>
            </div>
            <Suspense fallback={<Skeleton className="h-[400px] w-full" />}>
                <ServicesClientPage initialServices={services} empreendimentos={empreendimentos} />
            </Suspense>
        </div>
    )
}
