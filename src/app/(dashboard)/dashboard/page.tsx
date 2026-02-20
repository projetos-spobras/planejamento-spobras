
import { createClient } from "@/lib/supabase/server"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import {
    Users,
    Link2,
    Building2,
    FileText,
    Layers,
    PieChart
} from "lucide-react"

export const revalidate = 0

export default async function DashboardPage() {
    const supabase = await createClient()
    // Parallel data fetching for dashboard stats
    const [
        { count: empreendimentosCount },
        { count: contratosCount },
        { count: lotesCount },
        { count: linksCount },
        { data: contratosByTipo },
        { data: empreendimentosByGerencia }
    ] = await Promise.all([
        supabase.from("empreendimentos").select("*", { count: 'exact', head: true }),
        supabase.from("contratos").select("*", { count: 'exact', head: true }),
        supabase.from("lotes").select("*", { count: 'exact', head: true }),
        supabase.from("empreendimentos_contratos").select("*", { count: 'exact', head: true }),
        supabase.from("contratos").select("tipo"),
        supabase.from("empreendimentos").select("gerencia_id") // Assuming gerencia_id exists
    ])

    // Process charts data locally for MVP (aggregation on DB would be better but requires more complex queries/RPC)

    // Distribution of Contract Types
    const tipoMap = new Map<string, number>()
    contratosByTipo?.forEach(c => {
        const tipo = c.tipo || "Sem Tipo"
        tipoMap.set(tipo, (tipoMap.get(tipo) || 0) + 1)
    })

    // Assuming simple metrics for now

    return (
        <div className="flex-1 space-y-4 p-8 pt-6">
            <div className="flex items-center justify-between space-y-2">
                <h2 className="text-3xl font-bold tracking-tight">Dashboard</h2>
            </div>

            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Empreendimentos</CardTitle>
                        <Building2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{empreendimentosCount || 0}</div>
                        <p className="text-xs text-muted-foreground">Obras cadastradas</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Contratos</CardTitle>
                        <FileText className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{contratosCount || 0}</div>
                        <p className="text-xs text-muted-foreground">Contratos ativos</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Lotes</CardTitle>
                        <Layers className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{lotesCount || 0}</div>
                        <p className="text-xs text-muted-foreground">Lotes de execução</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Vínculos</CardTitle>
                        <Link2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{linksCount || 0}</div>
                        <p className="text-xs text-muted-foreground">Relações Obra-Contrato</p>
                    </CardContent>
                </Card>
            </div>

            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-7">
                <Card className="col-span-4">
                    <CardHeader>
                        <CardTitle>SPObras</CardTitle>
                    </CardHeader>
                    <CardContent className="pl-2">
                        <div className="h-[200px] flex items-center justify-center text-muted-foreground">
                            Espaço para gráficos de evolução (Em breve)
                        </div>
                    </CardContent>
                </Card>
                <Card className="col-span-3">
                    <CardHeader>
                        <CardTitle>Tipos de Contrato</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <div className="space-y-4">
                            {Array.from(tipoMap.entries()).map(([tipo, count]) => (
                                <div key={tipo} className="flex items-center">
                                    <div className="w-full flex-1 space-y-1">
                                        <p className="text-sm font-medium leading-none">{tipo}</p>
                                        <div className="flex items-center gap-2">
                                            <div className="h-2 w-full bg-secondary rounded-full overflow-hidden">
                                                <div
                                                    className="h-full bg-primary"
                                                    style={{ width: `${(count / (contratosCount || 1)) * 100}%` }}
                                                />
                                            </div>
                                            <span className="text-xs text-muted-foreground w-8 text-right">{count}</span>
                                        </div>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </CardContent>
                </Card>
            </div>
        </div>
    )
}
