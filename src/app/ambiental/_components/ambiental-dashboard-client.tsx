"use client"

import * as React from "react"
import { useRouter, usePathname, useSearchParams } from "next/navigation"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { 
    Search, 
    Filter, 
    X, 
    AlertCircle, 
    CheckCircle2, 
    Clock, 
    LayoutDashboard,
    FileText,
    ExternalLink,
    Upload
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
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip"
import { MultiCombobox } from "@/components/ui/multi-combobox"
import { DataTablePagination } from "@/components/ui/data-table-pagination"

const LICENCA_TYPES = [
    { id: 'ARQUEOLOGIA', label: 'ARQ', full: 'Arqueologia' },
    { id: 'DAEE', label: 'DAE', full: 'DAEE' },
    { id: 'DISPENSA_LICENCA', label: 'DIS', full: 'Dispensa de Licença' },
    { id: 'AREAS_CONTAMINADAS', label: 'CON', full: 'Áreas Contaminadas' },
    { id: 'TCA', label: 'TCA', full: 'TCA' },
    { id: 'PLANTIO', label: 'PLA', full: 'Plantio' },
    { id: 'EVA', label: 'EVA', full: 'EVA' },
    { id: 'EIA_RIMA', label: 'EIA', full: 'EIA/RIMA' },
    { id: 'LAP', label: 'LAP', full: 'LAP' },
    { id: 'LAI', label: 'LAI', full: 'LAI' },
    { id: 'LAO', label: 'LAO', full: 'LAO' },
]

const STATUS_COLORS = {
    'OK': 'bg-emerald-500',
    'A': 'bg-amber-400',
    'P': 'bg-orange-500',
    '': 'bg-slate-200 dark:bg-slate-700'
}

const STATUS_LABELS = {
    'OK': 'Aprovado/Concluído',
    'A': 'Em Andamento',
    'P': 'Pendente/A Fazer',
    '': 'Não Iniciado'
}

export function AmbientalDashboardClient({ 
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

    const handleImport = async (e: React.ChangeEvent<HTMLInputElement>) => {
        const file = e.target.files?.[0]
        if (!file) return

        const formData = new FormData()
        formData.append('file', file)

        try {
            const res = await fetch('/api/ambiental/importar', {
                method: 'POST',
                body: formData
            })
            const result = await res.json()
            
            if (res.ok) {
                if (result.errors && result.errors.length > 0) {
                    console.error("Detalhes dos erros de importação:", result.errors);
                    alert(`Importação concluída com erros!\nTotal: ${result.total}\nSucesso: ${result.inserted}\nErros: ${result.errors.length}\n\nPrimeiro erro (Linha ${result.errors[0].line}): ${result.errors[0].error}\n${result.errors[0].hint ? 'Dica: ' + result.errors[0].hint : ''}\n\nAbra o Console (F12) para ver a lista completa de erros.`);
                } else {
                    alert(`Importação concluída com sucesso!\nTotal: ${result.total}\nSucesso: ${result.inserted}\nErros: ${result.errors.length}`);
                }
                router.refresh()
            } else {
                alert(`Erro na importação: ${result.error}`)
            }
        } catch (err) {
            console.error(err)
            alert('Erro ao enviar arquivo.')
        }
    }

    const clearFilters = () => {
        setSearch('')
        router.push(pathname)
    }

    return (
        <div className="space-y-4">
            {/* Indicators */}
            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Empreendimentos Ativos</CardTitle>
                        <LayoutDashboard className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold">{indicators.totalAtivos}</div>
                        <p className="text-xs text-muted-foreground">Status ≠ Concluído/Finalizado</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Licenciamento Pendente</CardTitle>
                        <AlertCircle className="h-4 w-4 text-orange-500" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold text-orange-600">{indicators.pendentes}</div>
                        <p className="text-xs text-muted-foreground">Alguma licença com status 'P'</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Vencidos (Em Andamento)</CardTitle>
                        <Clock className="h-4 w-4 text-red-500" />
                    </CardHeader>
                    <CardContent>
                        <div className="text-2xl font-bold text-red-600">{indicators.vencidos}</div>
                        <p className="text-xs text-muted-foreground">Prazo expirado e não concluído</p>
                    </CardContent>
                </Card>
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                        <CardTitle className="text-sm font-medium">Principais Serviços</CardTitle>
                        <CheckCircle2 className="h-4 w-4 text-muted-foreground" />
                    </CardHeader>
                    <CardContent>
                        <div className="flex flex-wrap gap-1 mt-1">
                            {Object.entries(indicators.distribuicao || {})
                                .sort((a: any, b: any) => b[1] - a[1])
                                .slice(0, 3)
                                .map(([key, val]: any) => (
                                    <Badge key={key} variant="secondary" className="text-[10px] px-1 h-5">
                                        {key}: {val}
                                    </Badge>
                                ))}
                        </div>
                    </CardContent>
                </Card>
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
                                { label: 'Arqueologia', value: 'ARQUEOLOGIA' },
                                { label: 'Áreas Contaminadas', value: 'AC' },
                                { label: 'Supervisão', value: 'SUPERVISÃO' },
                                { label: 'DAEE', value: 'DAEE' },
                                { label: 'EVA', value: 'EVA' },
                                { label: 'EIA/RIMA', value: 'EIA_RIMA' },
                                { label: 'Outro', value: 'OUTRO' },
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
                            <div className="relative">
                                <Input
                                    type="file"
                                    accept=".xlsx, .xls"
                                    className="hidden"
                                    id="import-file"
                                    onChange={handleImport}
                                />
                                <Button 
                                    type="button" 
                                    variant="outline" 
                                    asChild
                                >
                                    <label htmlFor="import-file" className="cursor-pointer flex items-center gap-2">
                                        <Upload className="h-4 w-4" />
                                        Importar
                                    </label>
                                </Button>
                            </div>
                        </div>
                    </form>
                </CardContent>
            </Card>

            {/* Main Table */}
            <div className="rounded-md border bg-card">
                <Table>
                    <TableHeader>
                        <TableRow>
                            <TableHead className="w-[300px]">Empreendimento</TableHead>
                            <TableHead>SEI</TableHead>
                            <TableHead>Técnico GMA</TableHead>
                            <TableHead>Tipo</TableHead>
                            <TableHead>Status</TableHead>
                            <TableHead className="text-center">Estágio</TableHead>
                            <TableHead>Prazo</TableHead>
                            <TableHead className="text-center">%</TableHead>
                            <TableHead className="w-[220px] text-center">Licenças</TableHead>
                        </TableRow>
                    </TableHeader>
                    <TableBody>
                        {initialData.length === 0 ? (
                            <TableRow>
                                <TableCell colSpan={9} className="h-24 text-center">
                                    Nenhum registro encontrado.
                                </TableCell>
                            </TableRow>
                        ) : (
                            initialData.map((row) => {
                                const licenciamentosMap = new Map(
                                    (row.licenciamentos || []).map((l: any) => [l.tipo, l])
                                )

                                return (
                                    <TableRow 
                                        key={row.id} 
                                        className="cursor-pointer hover:bg-muted/50 transition-colors"
                                        onClick={() => router.push(`/ambiental/${row.id}`)}
                                    >
                                        <TableCell className="font-medium">
                                            <div className="flex flex-col">
                                                <span>{row.nome_empreendimento || row.empreendimento?.nome || "Sem Nome"}</span>
                                                <span className="text-[10px] text-muted-foreground uppercase">{row.programa || "-"}</span>
                                            </div>
                                        </TableCell>
                                        <TableCell className="text-xs font-mono">{row.sei_processo || "-"}</TableCell>
                                        <TableCell className="text-xs">{row.tecnico_gma || "-"}</TableCell>
                                        <TableCell>
                                            <Badge variant="outline" className="text-[10px] whitespace-nowrap">
                                                {row.tipo_servico || "-"}
                                            </Badge>
                                        </TableCell>
                                        <TableCell>
                                            <div className="text-xs whitespace-nowrap">{row.status || "-"}</div>
                                        </TableCell>
                                        <TableCell className="text-center font-bold">{row.estagio_contratacao || "-"}</TableCell>
                                        <TableCell>
                                            <span className={cn(
                                                "text-xs",
                                                row.prazo && new Date(row.prazo) < new Date() && row.status !== 'Concluído' 
                                                    ? "text-red-500 font-bold" 
                                                    : ""
                                            )}>
                                                {row.prazo ? format(new Date(row.prazo), "dd/MM/yy") : "-"}
                                            </span>
                                        </TableCell>
                                        <TableCell className="text-center text-xs font-bold tabular-nums">
                                            {row.percentual_conclusao ? `${row.percentual_conclusao}%` : "0%"}
                                        </TableCell>
                                        <TableCell>
                                            <div className="flex justify-center gap-[2px]">
                                                <TooltipProvider>
                                                    {LICENCA_TYPES.map((lt) => {
                                                        const lic = licenciamentosMap.get(lt.id)
                                                        const status = lic?.status || ''
                                                        const color = STATUS_COLORS[status as keyof typeof STATUS_COLORS]
                                                        
                                                        return (
                                                            <Tooltip key={lt.id} delayDuration={0}>
                                                                <TooltipTrigger asChild>
                                                                    <div className={cn(
                                                                        "w-4 h-4 rounded-[2px] flex items-center justify-center text-[7px] text-white font-bold cursor-default",
                                                                        color
                                                                    )}>
                                                                        {lt.label}
                                                                    </div>
                                                                </TooltipTrigger>
                                                                <TooltipContent className="text-[11px] p-2">
                                                                    <p className="font-bold">{lt.full}</p>
                                                                    <p className="flex items-center gap-1 mt-1">
                                                                        <span className={cn("w-2 h-2 rounded-full", color)} />
                                                                        {STATUS_LABELS[status as keyof typeof STATUS_LABELS]}
                                                                    </p>
                                                                    {lic?.observacao && (
                                                                        <p className="mt-1 border-t pt-1 italic opacity-80">{lic.observacao}</p>
                                                                    )}
                                                                </TooltipContent>
                                                            </Tooltip>
                                                        )
                                                    })}
                                                </TooltipProvider>
                                            </div>
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

function cn(...inputs: any[]) {
    return inputs.filter(Boolean).join(' ')
}
