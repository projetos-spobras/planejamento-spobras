
"use client"

import { useState } from "react"
import { Plus, Pencil, Trash2, Search } from "lucide-react"
import { toast } from "sonner"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
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

import { Empenho } from "@/types"
import { deleteEmpenho } from "@/app/(dashboard)/empenhos/actions"
import { EmpenhoDialog } from "./empenho-dialog"

interface EmpenhosClientProps {
    data: Empenho[]
    linkableItems: { id: string, label: string, type: 'empreendimento' | 'contrato' | 'lote' }[]
}

export function EmpenhosClient({ data, linkableItems }: EmpenhosClientProps) {
    const [searchTerm, setSearchTerm] = useState("")
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [empenhoToEdit, setEmpenhoToEdit] = useState<Empenho | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

    const filteredData = data.filter(item =>
        item.numero?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        false // Add more filter conditions if needed
    )

    const handleDelete = async () => {
        if (!deleteId) return

        const result = await deleteEmpenho(deleteId)
        if (result.success) {
            toast.success("Empenho excluído com sucesso")
        } else {
            toast.error("Erro ao excluir: " + result.error)
        }
        setDeleteId(null)
    }

    const openCreateDialog = () => {
        setEmpenhoToEdit(null)
        setIsDialogOpen(true)
    }

    const openEditDialog = (empenho: Empenho) => {
        setEmpenhoToEdit(empenho)
        setIsDialogOpen(true)
    }

    const getVinculoInfo = (type: string | null, id: string | null) => {
        if (!type || !id) return "-"
        const item = linkableItems.find(i => i.id === id && i.type === type)
        return item ? `${item.label} (${type})` : "Item não encontrado"
    }

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Empenhos</h2>
                    <p className="text-muted-foreground">
                        Gerencie as notas de empenho e suas vinculações.
                    </p>
                </div>
                <Button onClick={openCreateDialog}>
                    <Plus className="mr-2 h-4 w-4" /> Novo Empenho
                </Button>
            </div>

            <div className="flex items-center py-4">
                <Search className="mr-2 h-4 w-4 text-muted-foreground" />
                <Input
                    placeholder="Filtrar por número..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    className="max-w-sm"
                />
            </div>

            <div className="rounded-md border">
                <Table>
                    <TableHeader>
                        <TableRow>
                            <TableHead>Número</TableHead>
                            <TableHead>Valor</TableHead>
                            <TableHead>Data</TableHead>
                            <TableHead>Vínculo</TableHead>
                            <TableHead className="w-[100px]">Ações</TableHead>
                        </TableRow>
                    </TableHeader>
                    <TableBody>
                        {filteredData.length === 0 ? (
                            <TableRow>
                                <TableCell colSpan={5} className="h-24 text-center">
                                    Nenhum empenho encontrado.
                                </TableCell>
                            </TableRow>
                        ) : (
                            filteredData.map((item) => (
                                <TableRow key={item.id}>
                                    <TableCell className="font-medium">{item.numero || "-"}</TableCell>
                                    <TableCell>
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.valor)}
                                    </TableCell>
                                    <TableCell>
                                        {item.data_empenho ? format(new Date(item.data_empenho), "P", { locale: ptBR }) : "-"}
                                    </TableCell>
                                    <TableCell>
                                        {getVinculoInfo(item.tipo_vinculo, item.vinculo_id)}
                                    </TableCell>
                                    <TableCell>
                                        <DropdownMenu>
                                            <DropdownMenuTrigger asChild>
                                                <Button variant="ghost" className="h-8 w-8 p-0">
                                                    <span className="sr-only">Abrir menu</span>
                                                    <Pencil className="h-4 w-4" />
                                                </Button>
                                            </DropdownMenuTrigger>
                                            <DropdownMenuContent align="end">
                                                <DropdownMenuItem onClick={() => openEditDialog(item)}>
                                                    Editar
                                                </DropdownMenuItem>
                                                <DropdownMenuItem
                                                    onClick={() => setDeleteId(item.id)}
                                                    className="text-red-600 focus:text-red-600"
                                                >
                                                    Excluir
                                                </DropdownMenuItem>
                                            </DropdownMenuContent>
                                        </DropdownMenu>
                                    </TableCell>
                                </TableRow>
                            ))
                        )}
                    </TableBody>
                </Table>
            </div>

            <EmpenhoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                empenhoToEdit={empenhoToEdit}
                linkableItems={linkableItems}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Você tem certeza?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita. Isso excluirá permanentemente o empenho.
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
        </div>
    )
}
