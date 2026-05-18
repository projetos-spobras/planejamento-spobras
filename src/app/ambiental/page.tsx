import { Metadata } from "next"
import { getAmbientalDashboardData, getAmbientalFilterOptions } from "@/app/actions/ambiental-dashboard"
import { AmbientalDashboardClient } from "./_components/ambiental-dashboard-client"

export const metadata: Metadata = {
    title: "Módulo Ambiental | SID",
    description: "Painel de controle e monitoramento ambiental da GMA.",
}

export const dynamic = "force-dynamic"

interface AmbientalPageProps {
    searchParams: { [key: string]: string | string[] | undefined }
}

export default async function AmbientalPage({ searchParams }: AmbientalPageProps) {
    const params = await searchParams
    
    // Parsing search params
    const options = {
        search: params.search as string | undefined,
        tecnicos: typeof params.tecnico === 'string' ? params.tecnico.split(',') : undefined,
        tiposServico: typeof params.tipo === 'string' ? params.tipo.split(',') : undefined,
        status: typeof params.status === 'string' ? params.status.split(',') : undefined,
        estagios: typeof params.estagio === 'string' ? params.estagio.split(',') : undefined,
        programas: typeof params.programa === 'string' ? params.programa.split(',') : undefined,
        page: params.page ? Number(params.page) : 1,
        pageSize: params.pageSize ? Number(params.pageSize) : 10,
    }

    const [dashboardData, filterOptions] = await Promise.all([
        getAmbientalDashboardData(options),
        getAmbientalFilterOptions()
    ])

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <h2 className="text-3xl font-bold tracking-tight">Painel Ambiental</h2>
            </div>
            
            <AmbientalDashboardClient 
                initialData={dashboardData.data}
                totalCount={dashboardData.totalCount}
                indicators={dashboardData.indicators}
                filterOptions={filterOptions}
            />
        </div>
    )
}
