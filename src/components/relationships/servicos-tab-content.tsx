
"use client"

import { useState } from "react"
import { Plus, Pencil, Trash2 } from "lucide-react"
import { toast } from "sonner"
import { useRouter } from "next/navigation"

import { Button } from "@/components/ui/button"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
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

import { Servico } from "@/types"
import { deleteServico } from "@/app/actions/servicos"
import { ServicoDialog } from "./servico-dialog"

interface ServicosTabContentProps {
    servicos: (Servico & { contrato?: { numero: string, contratada?: string | null } })[]
    contratos: { id: string, numero: string, contratada: string | null }[]
    empreendimentoId: string
}

export function ServicosTabContent({ servicos, contratos, empreendimentoId }: ServicosTabContentProps) {
    const router = useRouter()
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editingItem, setEditingItem] = useState<Servico | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

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
                                <TableHead>Contrato</TableHead>
                                <TableHead>Item</TableHead>
                                <TableHead>Descrição</TableHead>
                                <TableHead>Und</TableHead>
                                <TableHead>Qtd</TableHead>
                                <TableHead>Unitário</TableHead>
                                <TableHead className="text-right">Total</TableHead>
                                <TableHead className="w-[100px]">Ações</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {servicos.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={8} className="text-center h-24 text-muted-foreground">
                                        Nenhum serviço cadastrado.
                                    </TableCell>
                                </TableRow>
                            ) : (
                                servicos.map((item) => (
                                    <TableRow key={item.id}>
                                        <TableCell className="font-medium text-xs">
                                            {item.contrato?.numero || "Sem contrato"}
                                        </TableCell>
                                        <TableCell>{item.codigo}</TableCell>
                                        <TableCell className="max-w-[200px] truncate" title={item.descricao}>
                                            {item.descricao}
                                        </TableCell>
                                        <TableCell>{item.unidade}</TableCell>
                                        <TableCell>{item.quantidade}</TableCell>
                                        <TableCell>
                                            {item.preco_unitario ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.preco_unitario) : '-'}
                                        </TableCell>
                                        <TableCell className="text-right font-semibold">
                                            {item.valor_total ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.valor_total) : '-'}
                                        </TableCell>
                                        <TableCell>
                                            <div className="flex items-center gap-2">
                                                <Button variant="ghost" size="icon" onClick={() => handleEdit(item)}>
                                                    <Pencil className="h-4 w-4" />
                                                </Button>
                                                <Button variant="ghost" size="icon" onClick={() => setDeleteId(item.id)}>
                                                    <Trash2 className="h-4 w-4 text-red-500" />
                                                </Button>
                                            </div>
                                        </TableCell>
                                    </TableRow>
                                ))
                            )}
                        </TableBody>
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
        </Card>
    )
}
