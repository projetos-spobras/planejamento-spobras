
"use client"

import { useState, useEffect } from "react"
import { Plus, Pencil, Trash2, GripVertical, AlertTriangle } from "lucide-react"
import { toast } from "sonner"
import { format } from "date-fns"
import { useRouter } from "next/navigation"
import { DragDropContext, Droppable, Draggable, DropResult } from "@hello-pangea/dnd"

import { Button } from "@/components/ui/button"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import { Badge } from "@/components/ui/badge"
import {
    Tooltip,
    TooltipContent,
    TooltipProvider,
    TooltipTrigger,
} from "@/components/ui/tooltip"
import {
    Card,
    CardContent,
    CardDescription,
    CardHeader,
    CardTitle,
} from "@/components/ui/card"
import {
    AlertDialog,
    AlertDialogAction,
    AlertDialogCancel,
    AlertDialogContent,
    AlertDialogDescription,
    AlertDialogFooter,
    AlertDialogHeader,
    AlertDialogTitle,
} from "@/components/ui/alert-dialog"

import { Servico, PlanejamentoFase } from "@/types"
import { deleteServico, updateServicoOrder } from "@/app/actions/servicos"
import { ServicoDialog } from "./servico-dialog"
import { AditamentoDialog } from "@/app/(dashboard)/planejamento/_components/aditamento-dialog"

interface ServicosTabContentProps {
    servicos: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    contratos: { id: string, numero: string, contratada: string | null, tipo?: string | null, valor_total?: number | null, data_inicio?: string | null, data_fim?: string | null }[]
    empreendimentoId: string
}

export function ServicosTabContent({ servicos, contratos, empreendimentoId }: ServicosTabContentProps) {
    const router = useRouter()
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editingItem, setEditingItem] = useState<Servico | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

    // Planejamento Amendment States
    const [isAditamentoDialogOpen, setIsAditamentoDialogOpen] = useState(false)
    const [selectedServico, setSelectedServico] = useState<any>(null)

    const [localServicos, setLocalServicos] = useState(servicos)

    useEffect(() => {
        setLocalServicos(servicos)
    }, [servicos])

    const onDragEnd = async (result: DropResult) => {
        if (!result.destination) return

        const items = Array.from(localServicos)
        const [reorderedItem] = items.splice(result.source.index, 1)
        items.splice(result.destination.index, 0, reorderedItem)

        // Optimistic update
        setLocalServicos(items)

        // Map to new orders
        const newOrders = items.map((item, index) => ({
            id: item.id,
            ordem: index + 1
        }))

        try {
            const res = await updateServicoOrder(newOrders)
            if (!res.success) {
                toast.error("Erro ao salvar ordem: " + res.error)
                setLocalServicos(servicos) // Rollback
            }
        } catch (error) {
            toast.error("Erro ao salvar ordem")
            setLocalServicos(servicos) // Rollback
        }
    }

    const handleDelete = async () => {
        if (!deleteId) return
        try {
            const res = await deleteServico(deleteId)
            if (res.success) {
                toast.success("Serviço excluído")
                setDeleteId(null)
                router.refresh()
            } else {
                toast.error("Erro ao excluir: " + res.error)
            }
        } catch (e) {
            toast.error("Erro inesperado")
        }
    }

    const handleEdit = (item: Servico) => {
        setEditingItem(item)
        setIsDialogOpen(true)
    }

    const handleOpenAmendmentDialog = (servico: any) => {
        setSelectedServico(servico);
        setIsAditamentoDialogOpen(true);
    };

    return (
        <Card>
            <CardHeader className="flex flex-row items-center justify-between">
                <div>
                    <CardTitle>Serviços</CardTitle>
                    <CardDescription>
                        Cadastro de serviços/itens vinculados aos contratos desta obra.
                    </CardDescription>
                </div>
                <Button onClick={() => {
                    setEditingItem(null)
                    setIsDialogOpen(true)
                }}>
                    <Plus className="mr-2 h-4 w-4" /> Novo Serviço
                </Button>
            </CardHeader>
            <CardContent>
                <div className="rounded-md border overflow-x-auto">
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead className="w-[40px]"></TableHead>
                                <TableHead className="w-[60px]">Sqe.</TableHead>
                                <TableHead>Tipo</TableHead>
                                <TableHead>Descrição</TableHead>
                                <TableHead>Início</TableHead>
                                <TableHead>Duração</TableHead>
                                <TableHead>Contrato</TableHead>
                                <TableHead className="text-right">Valor</TableHead>
                                <TableHead>Status</TableHead>
                                <TableHead className="w-[100px]">Ações</TableHead>
                            </TableRow>
                        </TableHeader>
                        <DragDropContext onDragEnd={onDragEnd}>
                            <Droppable droppableId="servicos-list" type="list" direction="vertical">
                                {(provided) => (
                                    <TableBody
                                        {...provided.droppableProps}
                                        ref={provided.innerRef}
                                    >
                                        {localServicos.length === 0 ? (
                                            <TableRow>
                                                <TableCell colSpan={10} className="text-center h-24 text-muted-foreground">
                                                    Nenhum serviço cadastrado.
                                                </TableCell>
                                            </TableRow>
                                        ) : (
                                            localServicos.map((item, index) => (
                                                <Draggable key={item.id} draggableId={item.id} index={index}>
                                                    {(provided, snapshot) => (
                                                        <TableRow
                                                            ref={provided.innerRef}
                                                            {...provided.draggableProps}
                                                            className={snapshot.isDragging ? "bg-accent opacity-50" : ""}
                                                        >
                                                            <TableCell className="w-[40px] px-2">
                                                                <div {...provided.dragHandleProps} className="cursor-grab active:cursor-grabbing p-1">
                                                                    <GripVertical className="h-4 w-4 text-muted-foreground" />
                                                                </div>
                                                            </TableCell>
                                                            <TableCell className="font-bold text-muted-foreground text-xs">
                                                                {String(index + 1).padStart(2, '0')}
                                                            </TableCell>
                                                            <TableCell className="text-xs whitespace-nowrap">
                                                                {item.tipo}
                                                            </TableCell>
                                                            <TableCell className="max-w-[200px] truncate" title={item.descricao}>
                                                                <div className="flex items-center gap-2">
                                                                    <span className="truncate">{item.descricao}</span>
                                                                    {(item as any).aditamento_anos > 0 && !(item as any).aditamento_formalizado && (
                                                                        <TooltipProvider>
                                                                            <Tooltip>
                                                                                <TooltipTrigger asChild>
                                                                                    <AlertTriangle className="h-4 w-4 text-orange-500 flex-shrink-0" />
                                                                                </TooltipTrigger>
                                                                                <TooltipContent>
                                                                                    <p className="text-xs">O aditamento de prazo não está formalizado</p>
                                                                                </TooltipContent>
                                                                            </Tooltip>
                                                                        </TooltipProvider>
                                                                    )}
                                                                </div>
                                                                {/* Exibição de Subtipos */}
                                                                <div className="flex flex-wrap gap-1 mt-1">
                                                                    {(item as any).tipo === 'Ambiental' && (item as any).subtipo_ambiental?.map((sub: string) => (
                                                                        <Badge key={sub} variant="outline" className="text-[9px] h-4 px-1.5 bg-emerald-50 text-emerald-700 border-emerald-200">
                                                                            {sub}
                                                                        </Badge>
                                                                    ))}
                                                                    {((item as any).tipo === 'Receita' || (item as any).tipo === 'Desapropriações') && (item as any).subtipo_receita?.map((sub: string) => (
                                                                        <Badge key={sub} variant="outline" className="text-[9px] h-4 px-1.5 bg-blue-50 text-blue-700 border-blue-200">
                                                                            {sub}
                                                                        </Badge>
                                                                    ))}
                                                                </div>
                                                            </TableCell>
                                                            <TableCell className="text-xs whitespace-nowrap">
                                                                {item.data_inicio ? format(new Date(item.data_inicio), "dd/MM/yy") : "-"}
                                                            </TableCell>
                                                            <TableCell className="text-xs">
                                                                {item.duracao_dias ? `${item.duracao_dias} d` : "-"}
                                                            </TableCell>
                                                            <TableCell className="font-medium text-xs">
                                                                {item.contrato?.numero || "Sem contrato"}
                                                            </TableCell>
                                                            <TableCell className="text-right">
                                                                <div className="flex items-center justify-end gap-2">
                                                                    <div className="font-semibold text-xs text-nowrap">
                                                                        {(() => {
                                                                            const isAmbiental = item.tipo === 'Ambiental';
                                                                            const valorExibir = isAmbiental 
                                                                                ? (item.valor_total || 0) 
                                                                                : (item.valor_contratual || item.valor_total || 0);
                                                                            
                                                                            return valorExibir > 0 
                                                                                ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(valorExibir) 
                                                                                : '-';
                                                                        })()}
                                                                    </div>
                                                                </div>
                                                                {item.contrato && ((item.contrato as any).valor_aditamento > 0 || (item.contrato as any).valor_reajuste > 0) && (
                                                                    <div className="text-[10px] text-muted-foreground leading-none mt-1 space-y-0.5">
                                                                        <div className="flex justify-end gap-x-1.5 flex-wrap">
                                                                            <span className="opacity-70">Orig: {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: 'compact' }).format((item.contrato as any).valor_original || 0)}</span>
                                                                            {Number((item.contrato as any).valor_aditamento) > 0 && (
                                                                                <span className="text-emerald-600">Adit: +{new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: 'compact' }).format((item.contrato as any).valor_aditamento)}</span>
                                                                            )}
                                                                            {Number((item.contrato as any).valor_reajuste) > 0 && (
                                                                                <span className="text-blue-600 font-medium">
                                                                                    <span className="ml-1 opacity-70 text-[9px]">
                                                                                        ({(item.contrato as any).percentual_reajuste || ((item.contrato as any).valor_original && (item.contrato as any).valor_original > 0 
                                                                                            ? (((item.contrato as any).valor_reajuste / (item.contrato as any).valor_original) * 100).toFixed(1) + "%"
                                                                                            : "0%")}
                                                                                    {(item.contrato as any).indice_nome && <span className="ml-1 uppercase text-[8px] font-normal">{(item.contrato as any).indice_nome}</span>})
                                                                                    </span>
                                                                                </span>
                                                                            )}
                                                                        </div>
                                                                    </div>
                                                                )}
                                                            </TableCell>
                                                            <TableCell className="text-xs whitespace-nowrap">
                                                                <span className="px-2 py-1 rounded-full bg-secondary text-secondary-foreground text-[10px] uppercase font-bold">
                                                                    {item.status || '-'}
                                                                </span>
                                                            </TableCell>
                                                            <TableCell>
                                                                <div className="flex items-center gap-1">
                                                                    <Button variant="ghost" size="icon" onClick={() => handleEdit(item)} title="Editar Serviço">
                                                                        <Pencil className="h-4 w-4" />
                                                                    </Button>
                                                                    <TooltipProvider>
                                                                        <Tooltip>
                                                                            <TooltipTrigger asChild>
                                                                                <Button
                                                                                    variant="ghost"
                                                                                    size="icon"
                                                                                    onClick={() => handleOpenAmendmentDialog(item)}
                                                                                    className="text-emerald-600"
                                                                                >
                                                                                    <Plus className="h-4 w-4" />
                                                                                </Button>
                                                                            </TooltipTrigger>
                                                                            <TooltipContent>
                                                                                <p className="text-xs">Adicionar Aditamento de Prazo</p>
                                                                            </TooltipContent>
                                                                        </Tooltip>
                                                                    </TooltipProvider>
                                                                    <Button variant="ghost" size="icon" onClick={() => setDeleteId(item.id)} title="Excluir Serviço">
                                                                        <Trash2 className="h-4 w-4 text-red-500" />
                                                                    </Button>
                                                                </div>
                                                            </TableCell>
                                                        </TableRow>
                                                    )}
                                                </Draggable>
                                            ))
                                        )}
                                        {provided.placeholder}
                                    </TableBody>
                                )}
                            </Droppable>
                        </DragDropContext>
                    </Table>
                </div>
            </CardContent>

            <ServicoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                servicoToEdit={editingItem}
                contratos={contratos}
                empreendimentoId={empreendimentoId}
                onSuccess={() => router.refresh()}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Excluir Serviço?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleDelete} className="bg-red-600 hover:bg-red-700">
                            Excluir
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>

            <AditamentoDialog
                open={isAditamentoDialogOpen}
                onOpenChange={setIsAditamentoDialogOpen}
                servicoId={selectedServico?.id || ""}
                defaultAnos={selectedServico?.aditamento_anos}
                defaultFormalizado={selectedServico?.aditamento_formalizado}
                onSuccess={() => router.refresh()}
            />
        </Card>
    )
}
