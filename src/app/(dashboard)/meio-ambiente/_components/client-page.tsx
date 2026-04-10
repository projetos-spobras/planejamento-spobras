"use client"

import { useRouter } from "next/navigation"
import { 
    AlertCircle, 
    Leaf, 
    Calendar, 
    ExternalLink,
    AlertTriangle,
    Info
} from "lucide-react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
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

interface MeioAmbienteClientProps {
    initialData: any[]
    contratos: any[]
}

export function MeioAmbienteClient({ initialData, contratos }: MeioAmbienteClientProps) {
    const router = useRouter()

    const formatDate = (d: string) => format(new Date(d), 'dd MMM yyyy', { locale: ptBR })

    // Calcular estatísticas simples
    const totalEmpreendimentos = initialData.length;
    const totalWithAlerts = initialData.filter(s => s.alerta_aditivo).length;
    const allSubtypes = initialData.flatMap(s => s.subtipos || [])
    const totalBySubtype = allSubtypes.reduce((acc: any, sub: string) => {
        acc[sub] = (acc[sub] || 0) + 1
        return acc
    }, {})

    return (
        <div className="p-6 space-y-6 text-foreground">
            <div className="flex justify-between items-center">
                <div>
                    <h1 className="text-3xl font-bold tracking-tight">Gestão Ambiental</h1>
                    <p className="text-muted-foreground">
                        Monitoramento e licenciamento de serviços ambientais vinculados aos empreendimentos.
                    </p>
                </div>
                <div className="flex gap-3">
                   <TooltipProvider>
                        <Tooltip>
                            <TooltipTrigger asChild>
                                <div className="flex items-center gap-2 px-4 py-2 bg-emerald-50 text-emerald-700 dark:bg-emerald-950/20 dark:text-emerald-400 rounded-lg border border-emerald-100 dark:border-emerald-900/50">
                                    <Leaf className="w-4 h-4" />
                                    <span className="font-semibold">{totalEmpreendimentos}</span>
                                    <span className="text-xs">Empreendimentos</span>
                                </div>
                            </TooltipTrigger>
                            <TooltipContent>
                                Obras com gestão ambiental ativa no planejamento
                            </TooltipContent>
                        </Tooltip>
                   </TooltipProvider>

                   {totalWithAlerts > 0 && (
                        <div className="flex items-center gap-2 px-4 py-2 bg-red-50 text-red-700 dark:bg-red-950/20 dark:text-red-400 rounded-lg border border-red-100 dark:border-red-900/50 animate-pulse">
                            <AlertTriangle className="w-4 h-4" />
                            <span className="font-semibold">{totalWithAlerts}</span>
                            <span className="text-xs">Alertas de Prazo</span>
                        </div>
                   )}
                </div>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
                {Object.entries(totalBySubtype).map(([label, count]: [string, any]) => (
                    <Card key={label} className="bg-muted/30 border-none shadow-none">
                        <CardContent className="p-4 flex items-center justify-between">
                            <div className="space-y-1">
                                <p className="text-xs font-medium text-muted-foreground uppercase">{label}</p>
                                <p className="text-2xl font-bold">{count}</p>
                            </div>
                            <div className="p-2 bg-background rounded-full border">
                                <Info className="w-4 h-4 text-muted-foreground" />
                            </div>
                        </CardContent>
                    </Card>
                ))}
            </div>

            <Card className="shadow-lg border-2 border-emerald-100/50 dark:border-emerald-900/10">
                <CardHeader className="bg-emerald-50/30 dark:bg-emerald-950/5 border-b">
                    <div className="flex items-center gap-2">
                        <Leaf className="w-5 h-5 text-emerald-600" />
                        <div>
                            <CardTitle>Empreendimentos com Gestão Ambiental</CardTitle>
                        </div>
                    </div>
                </CardHeader>
                <CardContent className="p-0">
                    <Table>
                        <TableHeader>
                            <TableRow className="bg-muted/50">
                                <TableHead className="w-[350px]">Empreendimento</TableHead>
                                <TableHead>Serviços / Subtipos</TableHead>
                                <TableHead>Status Consolidado</TableHead>
                                <TableHead>Última Atualização</TableHead>
                                <TableHead className="text-right">Ações</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                                {initialData.map((row) => (
                                    <TableRow 
                                        key={row.id} 
                                        className={`group transition-colors cursor-pointer ${row.alerta_aditivo ? 'bg-red-50/30 dark:bg-red-950/5 hover:bg-red-50/50' : 'hover:bg-emerald-50/10'}`}
                                        onClick={() => router.push(`/meio-ambiente/${row.id}`)}
                                    >
                                    <TableCell>
                                        <div className="flex flex-col">
                                            <span className="font-semibold text-xs text-muted-foreground uppercase">{row.empreendimento?.codigo || '---'}</span>
                                            <span className="text-sm font-bold line-clamp-1">{row.empreendimento?.nome || 'Não vinculado'}</span>
                                            {row.alerta_aditivo && (
                                                <div className="flex items-center gap-1.5 text-[10px] font-semibold text-red-600 uppercase tracking-tighter mt-1">
                                                    <AlertCircle className="w-3 h-3" />
                                                    Alerta: Revisar Licenciamento / Aditivo
                                                </div>
                                            )}
                                        </div>
                                    </TableCell>
                                    <TableCell>
                                        <div className="flex flex-wrap gap-1.5">
                                            {row.subtipos.map((sub: string) => (
                                                <Badge key={sub} variant="outline" className={`${
                                                    sub === 'Taxa Ambiental' 
                                                        ? 'bg-blue-50 text-blue-700 border-blue-200' 
                                                        : 'bg-emerald-50 text-emerald-700 border-emerald-200'
                                                } text-[10px] px-1.5 py-0`}>
                                                    {sub}
                                                </Badge>
                                            ))}
                                            <span className="text-[10px] text-muted-foreground font-medium ml-1">({row.servicos_count} serv.)</span>
                                        </div>
                                    </TableCell>
                                    <TableCell>
                                        <Badge variant={row.status_consolidado === 'Concluído' ? 'default' : 'secondary'} className="font-normal text-xs">
                                            {row.status_consolidado}
                                        </Badge>
                                    </TableCell>
                                    <TableCell>
                                        <div className="flex flex-col">
                                            <div className="flex items-center gap-1 text-xs text-muted-foreground">
                                                <Calendar className="w-3 h-3" />
                                                <span>Atividade:</span>
                                            </div>
                                            <span className="text-sm font-medium">{format(new Date(row.last_updated), 'dd MMM yyyy', { locale: ptBR })}</span>
                                        </div>
                                    </TableCell>
                                    <TableCell className="text-right">
                                        <div className="flex justify-end gap-2" onClick={(e) => { e.stopPropagation(); window.open(`/empreendimentos/${row.empreendimento_id}`, '_blank') }}>
                                            <Button variant="ghost" size="sm" className="h-8 px-3 text-[10px] uppercase font-bold gap-2">
                                                <ExternalLink className="w-3 h-3" /> Abrir Cockpit
                                            </Button>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ))}
                            {initialData.length === 0 && (
                                <TableRow>
                                    <TableCell colSpan={6} className="h-40 text-center">
                                        <div className="flex flex-col items-center justify-center text-muted-foreground space-y-2">
                                            <Leaf className="w-12 h-12 opacity-20" />
                                            <p>Nenhum serviço ambiental encontrado.</p>
                                            <p className="text-xs">Cadastre serviços do tipo "Ambiental" no planejamento dos empreendimentos.</p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            )}
                        </TableBody>
                    </Table>
                </CardContent>
            </Card>

        </div>
    )
}
