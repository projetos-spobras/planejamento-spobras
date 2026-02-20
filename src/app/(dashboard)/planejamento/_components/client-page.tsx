
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

import { PlanejamentoFase, Empreendimento } from "@/types"
import { deletePlanejamento } from "@/app/(dashboard)/planejamento/actions"
import { PlanejamentoDialog } from "./planejamento-dialog"

interface PlanejamentoClientProps {
    data: (PlanejamentoFase & { empreendimento?: Empreendimento })[]
    empreendimentos: { id: string, nome: string }[]
}

export function PlanejamentoClient({ data, empreendimentos }: PlanejamentoClientProps) {
    const [searchTerm, setSearchTerm] = useState("")
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [planejamentoToEdit, setPlanejamentoToEdit] = useState<PlanejamentoFase | null>(null)
    const [deleteId, setDeleteId] = useState<string | null>(null)

    const filteredData = data.filter(item =>
        item.fase?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        item.empreendimento?.nome.toLowerCase().includes(searchTerm.toLowerCase()) ||
        false
    )

    const handleDelete = async () => {
        if (!deleteId) return

        const result = await deletePlanejamento(deleteId)
        if (result.success) {
            toast.success("Planejamento excluído com sucesso")
        } else {
            toast.error("Erro ao excluir: " + result.error)
        }
        setDeleteId(null)
    }

    const openCreateDialog = () => {
        setPlanejamentoToEdit(null)
        setIsDialogOpen(true)
    }

    const openEditDialog = (item: PlanejamentoFase) => {
        setPlanejamentoToEdit(item)
        setIsDialogOpen(true)
    }

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h2 className="text-3xl font-bold tracking-tight">Planejamento de Fases</h2>
                    <p className="text-muted-foreground">
                        Cronograma físico-financeiro das fases dos empreendimentos.
                    </p>
                </div>
                <Button onClick={openCreateDialog}>
                    <Plus className="mr-2 h-4 w-4" /> Novo Planejamento
                </Button>
            </div>

            <div className="flex items-center py-4">
                <Search className="mr-2 h-4 w-4 text-muted-foreground" />
                <Input
                    placeholder="Filtrar por fase ou empreendimento..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    className="max-w-sm"
                />
            </div>

            <div className="rounded-md border">
                <Table>
                    <TableHeader>
                        <TableRow>
                            <TableHead>Empreendimento</TableHead>
                            <TableHead>Fase</TableHead>
                            <TableHead>Tipo</TableHead>
                            <TableHead>Início</TableHead>
                            <TableHead>Fim</TableHead>
                            <TableHead>Valor Planejado</TableHead>
                            <TableHead className="w-[100px]">Ações</TableHead>
                        </TableRow>
                    </TableHeader>
                    <TableBody>
                        {filteredData.length === 0 ? (
                            <TableRow>
                                <TableCell colSpan={7} className="h-24 text-center">
                                    Nenhum planejamento encontrado.
                                </TableCell>
                            </TableRow>
                        ) : (
                            filteredData.map((item) => (
                                <TableRow key={item.id}>
                                    <TableCell>{item.empreendimento?.nome || "N/A"}</TableCell>
                                    <TableCell className="font-medium">{item.fase}</TableCell>
                                    <TableCell className="capitalize">{item.tipo_fase || "-"}</TableCell>
                                    <TableCell>
                                        {item.data_inicio ? format(new Date(item.data_inicio), "P", { locale: ptBR }) : "-"}
                                    </TableCell>
                                    <TableCell>
                                        {item.data_fim ? format(new Date(item.data_fim), "P", { locale: ptBR }) : "-"}
                                    </TableCell>
                                    <TableCell>
                                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.valor_planejado)}
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

            <PlanejamentoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                planejamentoToEdit={planejamentoToEdit}
                empreendimentos={empreendimentos}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Você tem certeza?</AlertDialogTitle>
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
        </div>
    )
}
