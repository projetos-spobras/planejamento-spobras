"use client"

import * as React from "react"
import { useRouter, usePathname, useSearchParams } from "next/navigation"
import Link from "next/link"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { cn } from "@/lib/utils"
import { 
    Search, 
    X, 
    Leaf
} from "lucide-react"

import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import { MultiCombobox } from "@/components/ui/multi-combobox"
import { DataTablePagination } from "@/components/ui/data-table-pagination"

export function MeioAmbienteDashboardClient({ 
    initialData, 
    totalCount, 
    indicators,
    filterOptions 
}: { 
    initialData: any[]
    totalCount: number
    indicators: any
    filterOptions: any
}) {
    const router = useRouter()
    const pathname = usePathname()
    const searchParams = useSearchParams()

    // Filter states
    const [search, setSearch] = React.useState(searchParams.get('search') || '')
    
    // Helper to update URL
    const updateFilters = (newFilters: Record<string, string | string[] | undefined>) => {
        const params = new URLSearchParams(searchParams.toString())
        
        Object.entries(newFilters).forEach(([key, value]) => {
            if (value === undefined || value === null || (Array.isArray(value) && value.length === 0)) {
                params.delete(key)
            } else if (Array.isArray(value)) {
                params.set(key, value.join(','))
            } else {
                params.set(key, value)
            }
        })
        
        // Reset page on filter change
        if (!newFilters.page) params.set('page', '1')
        
        router.push(`${pathname}?${params.toString()}`)
    }

    const handleSearch = (e: React.FormEvent) => {
        e.preventDefault()
        updateFilters({ search })
    }

    const clearFilters = () => {
        setSearch('')
        router.push(pathname)
    }

    const getStatusConsolidado = (licenciamentos: any[]) => {
        if (!licenciamentos || licenciamentos.length === 0) {
            return "Não iniciado"
        }
        const statuses = licenciamentos.map(l => l.status).filter(Boolean)
        if (statuses.length === 0) {
            return "Não iniciado"
        }
        if (statuses.includes('P')) return "Pendente"
        if (statuses.includes('A')) return "Em Andamento"
        if (statuses.every(s => s === 'OK')) return "Regular"
        return "Não iniciado"
    }

    return (
        <div className="space-y-6">
            {/* Header */}
            <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4 pb-2 border-b">
                <div>
                    <h1 className="text-3xl font-bold tracking-tight text-foreground flex items-center gap-2">
                        Gestão Ambiental
                    </h1>
                    <p className="text-sm text-muted-foreground mt-1">
                        Monitoramento e licenciamento de serviços ambientais vinculados aos empreendimentos.
                    </p>
                </div>
                <div className="flex items-center gap-2 self-start md:self-center">
                    <Badge variant="outline" className="bg-emerald-500/10 text-emerald-700 dark:text-emerald-400 border-emerald-500/20 px-3 py-1 text-sm font-semibold rounded-full flex items-center gap-1">
                        <span>🌿</span> {totalCount} {totalCount === 1 ? 'Empreendimento' : 'Empreendimentos'}
                    </Badge>
                </div>
            </div>

            {/* Horizontal Grid of Cards for License Types */}
            <div className="grid gap-4 grid-cols-2 md:grid-cols-4 lg:grid-cols-6 xl:grid-cols-8">
                {Object.entries(indicators.distribuicao || {})
                    .filter(([_, count]: any) => count > 0)
                    .sort((a: any, b: any) => b[1] - a[1])
                    .map(([tipo, count]: any) => (
                        <Card key={tipo} className="border-emerald-500/10 hover:border-emerald-500/20 transition-all shadow-sm">
                            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-1 pt-3 px-4">
                                <CardTitle className="text-xs font-semibold uppercase text-muted-foreground tracking-wider truncate max-w-[95%]">
                                    {tipo}
                                </CardTitle>
                            </CardHeader>
                            <CardContent className="pb-3 px-4">
                                <div className="text-xl font-bold text-foreground">{count}</div>
                            </CardContent>
                        </Card>
                    ))}
            </div>

            {/* Filters */}
            <Card>
                <CardContent className="pt-6">
                    <form onSubmit={handleSearch} className="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-6 gap-4">
                        <div className="md:col-span-2 relative">
                            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                placeholder="Buscar por Nome ou SEI..."
                                className="pl-9"
                                value={search}
                                onChange={(e) => setSearch(e.target.value)}
                            />
                        </div>
                        
                        <MultiCombobox
                            id="combo-tecnico"
                            options={filterOptions.tecnicos.map((t: string) => ({ label: t, value: t }))}
                            value={searchParams.get('tecnico')?.split(',') || []}
                            onValueChange={(val) => updateFilters({ tecnico: val })}
                            placeholder="Técnico GMA"
                        />

                        <MultiCombobox
                            id="combo-tipo"
                            options={[
                                { label: 'LAP', value: 'LAP' },
                                { label: 'LAI', value: 'LAI' },
                                { label: 'LAO', value: 'LAO' },
                                { label: 'TCA', value: 'TCA' },
                                { label: 'Taxa Ambiental', value: 'Taxa Ambiental' },
                                { label: 'Arqueologia', value: 'ARQUEOLOGIA' },
                                { label: 'Áreas Contaminadas', value: 'AREAS_CONTAMINADAS' },
                                { label: 'Plantio', value: 'PLANTIO' },
                                { label: 'DAEE', value: 'DAEE' },
                                { label: 'EVA', value: 'EVA' },
                                { label: 'EIA/RIMA', value: 'EIA_RIMA' },
                            ]}
                            value={searchParams.get('tipo')?.split(',') || []}
                            onValueChange={(val) => updateFilters({ tipo: val })}
                            placeholder="Tipo de Serviço"
                        />

                        <MultiCombobox
                            id="combo-status"
                            options={filterOptions.status.map((s: string) => ({ label: s, value: s }))}
                            value={searchParams.get('status')?.split(',') || []}
                            onValueChange={(val) => updateFilters({ status: val })}
                            placeholder="Status"
                        />

                        <div className="flex gap-2">
                            <Button type="submit" variant="secondary" className="flex-1">Filtrar</Button>
                            <Button type="button" variant="ghost" onClick={clearFilters} title="Limpar Filtros">
                                <X className="h-4 w-4" />
                            </Button>
                        </div>
                    </form>
                </CardContent>
            </Card>

            {/* Main Table */}
            <div className="rounded-md border bg-card">
                <div className="p-4 border-b">
                    <h3 className="font-semibold text-base text-foreground">Empreendimentos com Gestão Ambiental</h3>
                </div>
                <Table>
                    <TableHeader>
                        <TableRow>
                            <TableHead className="w-[300px]">Empreendimento</TableHead>
                            <TableHead>Serviços / Subtipos</TableHead>
                            <TableHead>Status Consolidado</TableHead>
                            <TableHead>Última Atualização</TableHead>
                            <TableHead className="text-right">Valor Previsto</TableHead>
                        </TableRow>
                    </TableHeader>
                    <TableBody>
                        {initialData.length === 0 ? (
                            <TableRow>
                                <TableCell colSpan={5} className="h-24 text-center">
                                    Nenhum registro encontrado.
                                </TableCell>
                            </TableRow>
                        ) : (
                            initialData.map((row) => {
                                const statusConsolidado = getStatusConsolidado(row.licenciamentos)
                                
                                let statusBadgeStyle = ""
                                if (statusConsolidado === "Pendente") {
                                    statusBadgeStyle = "bg-rose-50 text-rose-700 dark:bg-rose-950/20 dark:text-rose-400 border-rose-200/60"
                                } else if (statusConsolidado === "Em Andamento") {
                                    statusBadgeStyle = "bg-amber-50 text-amber-800 dark:bg-amber-950/20 dark:text-amber-400 border-amber-200/60"
                                } else if (statusConsolidado === "Regular") {
                                    statusBadgeStyle = "bg-emerald-50 text-emerald-700 dark:bg-emerald-950/20 dark:text-emerald-400 border-emerald-200/60"
                                } else {
                                    statusBadgeStyle = "bg-slate-50 text-slate-500 dark:bg-slate-800/40 dark:text-slate-400 border-slate-200/40"
                                }

                                return (
                                    <TableRow 
                                        key={row.empreendimento_id} 
                                        className="hover:bg-muted/50 transition-colors"
                                    >
                                        <TableCell>
                                            <div className="font-semibold text-sm text-foreground">
                                                <Link 
                                                    href={`/ambiental/${row.id}`} 
                                                    className="hover:underline font-semibold text-primary"
                                                >
                                                    {row.nome_empreendimento || "Sem Nome"}
                                                </Link>
                                            </div>
                                        </TableCell>
                                        <TableCell>
                                            <div className="flex items-center gap-2 flex-wrap">
                                                {(row.tipo_servico_raw || []).map((sub: string) => (
                                                    <Badge key={sub} variant="secondary" className="text-[10px] px-1.5 py-0.5 font-medium bg-emerald-50 text-emerald-800 dark:bg-emerald-950/30 dark:text-emerald-400 border border-emerald-200/50 dark:border-emerald-800/30">
                                                        {sub}
                                                    </Badge>
                                                ))}
                                                <span className="text-[11px] text-muted-foreground font-semibold ml-1">
                                                    ({row.total_servicos || 0} {row.total_servicos === 1 ? 'serv.' : 'serv.'})
                                                </span>
                                            </div>
                                        </TableCell>
                                        <TableCell>
                                            <Badge variant="outline" className={cn("text-xs font-semibold px-2.5 py-0.5 rounded-full", statusBadgeStyle)}>
                                                {statusConsolidado}
                                            </Badge>
                                        </TableCell>
                                        <TableCell>
                                            <span className="text-xs text-muted-foreground">
                                                {row.updated_at ? format(new Date(row.updated_at), "dd/MM/yyyy HH:mm", { locale: ptBR }) : "-"}
                                            </span>
                                        </TableCell>
                                        <TableCell className="text-right font-medium">
                                            {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(row.valor_contrato || 0)}
                                        </TableCell>
                                    </TableRow>
                                )
                            })
                        )}
                    </TableBody>
                </Table>
            </div>

            <DataTablePagination 
                currentPage={Number(searchParams.get('page') || 1)}
                totalPages={Math.ceil(totalCount / Number(searchParams.get('pageSize') || 10))}
                pageSize={Number(searchParams.get('pageSize') || 10)}
                totalItems={totalCount}
                onPageChange={(page) => updateFilters({ page: String(page) })}
                onPageSizeChange={(size) => updateFilters({ pageSize: String(size), page: '1' })}
            />
        </div>
    )
}
