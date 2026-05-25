import { Metadata } from "next"
import { getAmbientalDashboardData, getAmbientalFilterOptions } from "@/app/actions/ambiental-dashboard"
import { MeioAmbienteDashboardClient } from "./_components/meio-ambiente-dashboard-client"

export const metadata: Metadata = {
    title: "Gestão Ambiental | SID",
    description: "Monitoramento e licenciamento de serviços ambientais vinculados aos empreendimentos.",
}

export const dynamic = "force-dynamic"

interface MeioAmbientePageProps {
    searchParams: Promise<{ [key: string]: string | string[] | undefined }>
}

export default async function MeioAmbientePage({ searchParams }: MeioAmbientePageProps) {
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
            <MeioAmbienteDashboardClient 
                initialData={dashboardData.data}
                totalCount={dashboardData.totalCount}
                indicators={dashboardData.indicators}
                filterOptions={filterOptions}
            />
        </div>
    )
}
