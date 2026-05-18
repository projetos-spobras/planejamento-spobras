"use client"

import { useState } from "react"
import { useRouter } from "next/navigation"
import { 
    AlertCircle, 
    Home, 
    FileText, 
    Calendar, 
    MoreVertical, 
    ExternalLink,
    Edit2,
    Info,
    MapPin
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
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"
import { ServicoDialog } from "@/components/relationships/servico-dialog"
import { 
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip"

interface DesapropriacaoClientProps {
    initialData: any[] // Empreendimentos and their counts
    totalItems: number
    contratos: any[]
}

export function DesapropriacaoClient({ initialData, totalItems, contratos }: DesapropriacaoClientProps) {
    const router = useRouter()
    const [page, setPage] = useState(1)
    const [limit, setLimit] = useState(15)
    const [selectedServico, setSelectedServico] = useState<any | null>(null)
    const [isDialogOpen, setIsDialogOpen] = useState(false)

    // Sync with URL when page or limit changes
    const updatePagination = (newPage: number, newLimit: number) => {
        setPage(newPage)
        setLimit(newLimit)
        router.push(`?page=${newPage}&limit=${newLimit}`)
    }

    const handleEdit = (servico: any) => {
        setSelectedServico(servico)
        setIsDialogOpen(true)
    }

    const formatCurrency = (val: number) => {
        return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val)
    }

    const totalEmpreendimentos = totalItems;
    
    // Calcular estatísticas globais
    let total_acoes_global = 0;
    let total_materiais_global = 0;

    initialData.forEach(emp => {
        total_acoes_global += (emp.total_acoes || 0);
        total_materiais_global += (emp.total_materiais || 0);
    });

    return (
        <div className="p-6 space-y-6 text-foreground">
            <div className="flex justify-between items-center">
                <div>
                    <h1 className="text-3xl font-bold tracking-tight">Gestão de Desapropriações</h1>
                    <p className="text-muted-foreground">
                        Acompanhamento de Ações de Desapropriação e Materiais Expropriatórios vinculados aos empreendimentos.
                    </p>
                </div>
                <div className="flex gap-3">
                   <TooltipProvider>
                        <Tooltip>
                            <TooltipTrigger asChild>
                                <div className="flex items-center gap-2 px-4 py-2 bg-amber-50 text-amber-700 dark:bg-amber-950/20 dark:text-amber-400 rounded-lg border border-amber-100 dark:border-amber-900/50">
                                    <Home className="w-4 h-4" />
                                    <span className="font-semibold">{totalEmpreendimentos}</span>
                                    <span className="text-xs">Obras</span>
                                </div>
                            </TooltipTrigger>
                            <TooltipContent>
                                Total de empreendimentos com ações e materiais de desapropriação
                            </TooltipContent>
                        </Tooltip>
                   </TooltipProvider>

                   <TooltipProvider>
                        <Tooltip>
                            <TooltipTrigger asChild>
                                <div className="flex items-center gap-2 px-4 py-2 bg-blue-50 text-blue-700 dark:bg-blue-950/20 dark:text-blue-400 rounded-lg border border-blue-100 dark:border-blue-900/50">
                                    <FileText className="w-4 h-4" />
                                    <span className="font-semibold">{total_acoes_global}</span>
                                    <span className="text-xs">Ações cadastradas</span>
                                </div>
                            </TooltipTrigger>
                            <TooltipContent>Total de Ações de Desapropriação</TooltipContent>
                        </Tooltip>
                   </TooltipProvider>

                   <Button onClick={() => window.open("/formularios/desapropriacoes", "_blank")} variant="outline" className="gap-2">
                       <ExternalLink className="w-4 h-4" />
                       Formulário Público
                   </Button>
                </div>
            </div>

            <Card className="shadow-lg border-2 border-amber-100/50 dark:border-amber-900/10">
                <CardHeader className="bg-amber-50/30 dark:bg-amber-950/5 border-b">
                    <div className="flex items-center gap-2">
                        <FileText className="w-5 h-5 text-amber-600" />
                        <div>
                            <CardTitle>Empreendimentos com Desapropriações</CardTitle>
                        </div>
                    </div>
                </CardHeader>
                <CardContent className="p-0">
                    <Table>
                        <TableHeader>
                            <TableRow className="bg-muted/50">
                                <TableHead className="w-[300px]">Empreendimento</TableHead>
                                <TableHead>Qtd. Ações</TableHead>
                                <TableHead>Qtd. Materiais Exp.</TableHead>
                                <TableHead>Total Estimado</TableHead>
                                <TableHead className="text-right">Opções</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                                {initialData.map((row) => (
                                    <TableRow 
                                        key={row.id} 
                                        className={`group transition-colors cursor-pointer hover:bg-amber-50/10`}
                                        onClick={() => router.push(`/desapropriacoes/${row.id}`)}
                                    >
                                    <TableCell>
                                        <div className="flex flex-col">
                                            <span className="font-semibold text-xs text-muted-foreground uppercase">{row.codigo || '---'}</span>
                                            <span className="text-sm line-clamp-2">{row.nome || 'Não nomeado'}</span>
                                        </div>
                                    </TableCell>
                                    <TableCell>
                                        <div className="font-medium">{row.total_acoes}</div>
                                    </TableCell>
                                    <TableCell>
                                        <div className="font-medium">{row.total_materiais}</div>
                                    </TableCell>
                                    <TableCell>
                                        <span className="font-bold text-amber-700">{formatCurrency(row.total_valor || 0)}</span>
                                    </TableCell>
                                    <TableCell className="text-right">
                                        <div className="flex justify-end gap-2" onClick={(e) => e.stopPropagation()}>
                                            <DropdownMenu>
                                                <DropdownMenuTrigger asChild>
                                                    <Button variant="ghost" size="icon" className="h-8 w-8">
                                                        <MoreVertical className="w-4 h-4" />
                                                    </Button>
                                                </DropdownMenuTrigger>
                                                <DropdownMenuContent align="end">
                                                    <DropdownMenuItem onClick={() => router.push(`/desapropriacoes/${row.id}`)}>
                                                        <ExternalLink className="mr-2 h-4 w-4" />
                                                        Abrir Cockpit
                                                    </DropdownMenuItem>
                                                    <DropdownMenuItem onClick={() => window.open(`/empreendimentos/${row.id}`, '_blank')}>
                                                        <Home className="mr-2 h-4 w-4" />
                                                        Ver Empreendimento original
                                                    </DropdownMenuItem>
                                                </DropdownMenuContent>
                                            </DropdownMenu>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ))}
                            {initialData.length === 0 && (
                                <TableRow>
                                    <TableCell colSpan={5} className="h-40 text-center">
                                        <div className="flex flex-col items-center justify-center text-muted-foreground space-y-2">
                                            <AlertCircle className="w-12 h-12 opacity-20" />
                                            <p>Nenhum empreendimento vinculado a desapropriação encontrado.</p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            )}
                        </TableBody>
                    </Table>
                </CardContent>
            </Card>

            <div className="flex items-center justify-between text-sm">
                <p className="text-muted-foreground">
                    Página {page} de {Math.max(1, Math.ceil(totalItems / limit))} 
                    <span className="mx-2">•</span>
                    {totalItems} Empreendimentos no total
                </p>
                <div className="flex items-center space-x-2">
                    <Button 
                        variant="outline" 
                        size="sm"
                        disabled={page === 1}
                        onClick={() => updatePagination(page - 1, limit)}
                    >
                        Anterior
                    </Button>
                    {[10, 15, 20, 100].map(size => (
                        <Button 
                            key={size}
                            variant={limit === size ? "default" : "outline"}
                            size="sm"
                            className="w-10 h-8 p-0"
                            onClick={() => updatePagination(1, size)}
                        >
                            {size}
                        </Button>
                    ))}
                    <Button 
                        variant="outline" 
                        size="sm"
                        disabled={page * limit >= totalItems}
                        onClick={() => updatePagination(page + 1, limit)}
                    >
                        Próxima
                    </Button>
                </div>
            </div>

            {selectedServico && (
                <ServicoDialog
                    open={isDialogOpen}
                    onOpenChange={setIsDialogOpen}
                    servicoToEdit={selectedServico}
                    contratos={contratos}
                    empreendimentoId={selectedServico.empreendimento_id}
                    onSuccess={() => {
                        setIsDialogOpen(false)
                        router.refresh()
                    }}
                />
            )}
        </div>
    )
}
