
"use client"

import { useState, useEffect } from "react"
import Link from "next/link"
import { useRouter } from "next/navigation"
import {
    Plus,
    MoreHorizontal,
    Pencil,
    Trash2,
    Search,
    Filter
} from "lucide-react"
import { toast } from "sonner"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
    DropdownMenuLabel,
    DropdownMenuSeparator,
    DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"
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
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"

import { Empreendimento } from "@/types"
import { deleteEmpreendimento } from "@/app/(dashboard)/empreendimentos/actions"
import { EmpreendimentoDialog } from "./empreendimento-dialog"
import { DataTablePagination } from "@/components/ui/data-table-pagination"
import { useUrlFilters } from "@/hooks/use-url-filters"

interface EmpreendimentosClientProps {
    data: Empreendimento[]
    totalItems: number
    programas: any[]
    distritos: any[]
    gerencias: any[]
    fases: any[]
}

export function EmpreendimentosClient({ data, totalItems, programas, distritos, gerencias, fases }: EmpreendimentosClientProps) {
    const { setFilter, getFilter, searchParams } = useUrlFilters()
    const router = useRouter()
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editingItem, setEditingItem] = useState<Empreendimento | null>(null)

    const [deleteId, setDeleteId] = useState<string | null>(null)
    const [isDeleting, setIsDeleting] = useState(false)

    // Get filters from URL
    const searchTerm = getFilter("search") || ""
    const statusFilter = getFilter("status") || "all"
    const currentPage = Number(getFilter("page")) || 1
    const pageSize = Number(getFilter("pageSize")) || 12

    const [searchValue, setSearchValue] = useState(searchTerm)

    // Sync local search value with URL param (in case of navigation)
    useEffect(() => {
        setSearchValue(searchTerm)
    }, [searchTerm])

    // Debounce search update
    useEffect(() => {
        const timeoutId = setTimeout(() => {
            if (searchValue !== searchTerm) {
                setFilter("search", searchValue)
            }
        }, 500)

        return () => clearTimeout(timeoutId)
    }, [searchValue, setFilter, searchTerm])

    const totalPages = Math.ceil(totalItems / pageSize)
    const paginatedData = data

    // Create lookup maps
    const programaMap = new Map(programas.map(p => [p.id, p.nome]))
    const distritoMap = new Map(distritos.map(d => [d.id, d.nome]))
    const gerenciaMap = new Map(gerencias.map(g => [g.id, g.nome]))
    const faseMap = new Map(fases.map(f => [f.id, f.nome]))

    const getStatusName = (id: string | null) => {
        if (!id) return 'N/A'
        return faseMap.get(Number(id)) || id
    }

    const handleEdit = (item: Empreendimento) => {
        setEditingItem(item)
        setIsDialogOpen(true)
    }

    const handleDelete = async () => {
        if (!deleteId) return
        setIsDeleting(true)
        try {
            const res = await deleteEmpreendimento(deleteId)
            if (res.success) {
                toast.success("Empreendimento excluído")
                setDeleteId(null)
            } else {
                toast.error("Erro ao excluir: " + res.error)
            }
        } catch (e) {
            toast.error("Erro inesperado")
        } finally {
            setIsDeleting(false)
        }
    }

    return (
        <div className="space-y-6">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
                <h1 className="text-3xl font-bold">Empreendimentos</h1>
                <Button onClick={() => {
                    setEditingItem(null)
                    setIsDialogOpen(true)
                }}>
                    <Plus className="mr-2 h-4 w-4" /> Novo Empreendimento
                </Button>
            </div>

            <Card>
                <CardHeader className="pb-3">
                    <CardTitle>Listagem</CardTitle>
                    <div className="flex items-center gap-2 pt-2">
                        <div className="relative flex-1 max-w-sm">
                            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                placeholder="Buscar por nome ou código..."
                                className="pl-8"
                                value={searchValue}
                                onChange={(e) => setSearchValue(e.target.value)}
                            />
                        </div>
                        <div className="w-[200px]">
                            <Select value={statusFilter} onValueChange={(value) => setFilter("status", value)}>
                                <SelectTrigger>
                                    <SelectValue placeholder="Status" />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="all">Todos</SelectItem>
                                    {fases.map(s => (
                                        <SelectItem key={s.id} value={String(s.id)}>{s.nome}</SelectItem>
                                    ))}
                                </SelectContent>
                            </Select>
                        </div>
                    </div>
                </CardHeader>
                <CardContent>
                    <div className="rounded-md border overflow-x-auto">
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Código</TableHead>
                                    <TableHead>Nome</TableHead>
                                    <TableHead>Subpref./Distrito</TableHead>
                                    <TableHead>Programa</TableHead>
                                    <TableHead>Gerência</TableHead>
                                    <TableHead>Status</TableHead>
                                    <TableHead className="text-right">Valor Total</TableHead>
                                    <TableHead className="w-[70px]"></TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {paginatedData.length === 0 ? (
                                    <TableRow>
                                        <TableCell colSpan={8} className="text-center h-24 text-muted-foreground">
                                            Nenhum registro encontrado.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    paginatedData.map((item) => (
                                        <TableRow key={item.id}>
                                            <TableCell>{item.codigo || '-'}</TableCell>
                                            <TableCell className="font-medium">
                                                <div className="flex flex-col">
                                                    <Link href={`/empreendimentos/${item.id}`} className="hover:underline font-semibold text-primary">
                                                        {item.nome}
                                                    </Link>
                                                    <span className="text-xs text-muted-foreground truncate max-w-[200px]">{item.descricao}</span>
                                                </div>
                                            </TableCell>
                                            <TableCell>{distritoMap.get(item.id_distrito || -1) || item.subprefeitura || item.id_distrito || '-'}</TableCell>
                                            <TableCell>{programaMap.get(item.id_programa || -1) || item.programa || item.id_programa || '-'}</TableCell>
                                            <TableCell>{gerenciaMap.get(Number(item.gerencia)) || item.gerencia || '-'}</TableCell>
                                            <TableCell>
                                                <span className="inline-flex items-center rounded-full border px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80">
                                                    {getStatusName(item.status)}
                                                </span>
                                            </TableCell>
                                            <TableCell className="text-right">
                                                {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.valor_total || 0)}
                                            </TableCell>
                                            <TableCell>
                                                <DropdownMenu>
                                                    <DropdownMenuTrigger asChild>
                                                        <Button variant="ghost" className="h-8 w-8 p-0">
                                                            <span className="sr-only">Abrir menu</span>
                                                            <MoreHorizontal className="h-4 w-4" />
                                                        </Button>
                                                    </DropdownMenuTrigger>
                                                    <DropdownMenuContent align="end">
                                                        <DropdownMenuLabel>Ações</DropdownMenuLabel>
                                                        <DropdownMenuItem onClick={() => handleEdit(item)}>
                                                            <Pencil className="mr-2 h-4 w-4" /> Editar
                                                        </DropdownMenuItem>
                                                        <DropdownMenuSeparator />
                                                        <DropdownMenuItem className="text-red-600 focus:text-red-600" onClick={() => setDeleteId(item.id)}>
                                                            <Trash2 className="mr-2 h-4 w-4" /> Excluir
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

                    <DataTablePagination
                        currentPage={currentPage}
                        totalPages={totalPages}
                        pageSize={pageSize}
                        totalItems={totalItems}
                        onPageChange={(page) => setFilter("page", String(page))}
                        onPageSizeChange={(size) => {
                            setFilter("pageSize", String(size))
                        }}
                    />
                </CardContent>
            </Card>

            <EmpreendimentoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                empreendimentoToEdit={editingItem}
                lookups={{ programaMap, distritoMap, gerenciaMap, faseMap }}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Tem certeza?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação não pode ser desfeita. Isso excluirá permanentemente o empreendimento.
                        </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                        <AlertDialogCancel>Cancelar</AlertDialogCancel>
                        <AlertDialogAction onClick={handleDelete} className="bg-red-600 hover:bg-red-700">
                            {isDeleting ? "Excluindo..." : "Sim, excluir"}
                        </AlertDialogAction>
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </div>
    )
}
