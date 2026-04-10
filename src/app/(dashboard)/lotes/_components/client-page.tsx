
"use client"

import { useState } from "react"
import Link from "next/link"
import {
    Plus,
    MoreHorizontal,
    Pencil,
    Trash2,
    Search,
    Download,
    Loader2,
    Building2,
} from "lucide-react"
import { toast } from "sonner"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import {
    Select,
    SelectContent,
    SelectItem,
    SelectTrigger,
    SelectValue,
} from "@/components/ui/select"
import {
    DropdownMenu,
    DropdownMenuContent,
    DropdownMenuItem,
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

import { Lote, Contrato } from "@/types"
import { deleteLote } from "@/app/(dashboard)/lotes/actions"
import { importLotesFromApi } from "@/app/(dashboard)/lotes/import-lotes-action"
import { LoteDialog } from "./lote-dialog"
import { DataTablePagination } from "@/components/ui/data-table-pagination"

const TIPO_BADGE: Record<string, string> = {
    GERAL: "bg-blue-100 text-blue-800 border border-blue-200",
    OAE: "bg-amber-100 text-amber-800 border border-amber-200",
    ESCOLA: "bg-green-100 text-green-800 border border-green-200",
}

interface LotesClientProps {
    data: (Lote & { contratos: { numero: string }, emp_count: number })[]
    contratos: Contrato[]
}

export function LotesClient({ data, contratos }: LotesClientProps) {
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editingItem, setEditingItem] = useState<Lote | null>(null)

    const [deleteId, setDeleteId] = useState<string | null>(null)
    const [isDeleting, setIsDeleting] = useState(false)

    const [searchTerm, setSearchTerm] = useState("")
    const [typeFilter, setTypeFilter] = useState<string>("todos")
    const [pageSize, setPageSize] = useState(10)
    const [currentPage, setCurrentPage] = useState(1)
    const [isImporting, setIsImporting] = useState(false)

    const filteredData = data.filter(item => {
        const matchesSearch = item.nome.toLowerCase().includes(searchTerm.toLowerCase()) ||
            (item.contratos?.numero && item.contratos.numero.toLowerCase().includes(searchTerm.toLowerCase())) ||
            (item.tipo && item.tipo.toLowerCase().includes(searchTerm.toLowerCase()))
        
        const matchesType = typeFilter === "todos" || item.tipo === typeFilter
        
        return matchesSearch && matchesType
    })

    const totalPages = Math.ceil(filteredData.length / pageSize)
    const paginatedData = filteredData.slice(
        (currentPage - 1) * pageSize,
        currentPage * pageSize
    )

    const handleEdit = (item: Lote) => {
        setEditingItem(item)
        setIsDialogOpen(true)
    }

    const handleDelete = async () => {
        if (!deleteId) return
        setIsDeleting(true)
        try {
            const res = await deleteLote(deleteId)
            if (res.success) {
                toast.success("Lote excluído")
                setDeleteId(null)
            } else {
                toast.error(res.error)
            }
        } catch (e) {
            toast.error("Erro inesperado")
        } finally {
            setIsDeleting(false)
        }
    }

    const handleImport = async () => {
        setIsImporting(true)
        try {
            const result = await importLotesFromApi()
            if (result.success) {
                if (result.created > 0) {
                    toast.success(result.message)
                } else {
                    toast.info(result.message)
                }
                if (result.errors.length > 0) {
                    result.errors.forEach(err => toast.error(err))
                }
            } else {
                toast.error(result.message)
            }
        } catch (e) {
            toast.error("Erro inesperado na importação")
        } finally {
            setIsImporting(false)
        }
    }

    return (
        <div className="space-y-6">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
                <h1 className="text-3xl font-bold">Lotes</h1>
                <div className="flex gap-2">
                    <Button
                        variant="outline"
                        onClick={handleImport}
                        disabled={isImporting}
                    >
                        {isImporting ? (
                            <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                        ) : (
                            <Download className="mr-2 h-4 w-4" />
                        )}
                        {isImporting ? "Importando..." : "Importar da API"}
                    </Button>
                    <Button onClick={() => {
                        setEditingItem(null)
                        setIsDialogOpen(true)
                    }}>
                        <Plus className="mr-2 h-4 w-4" /> Novo Lote
                    </Button>
                </div>
            </div>

            <Card>
                <CardHeader className="pb-3">
                    <CardTitle>Listagem</CardTitle>
                    <div className="flex flex-col sm:flex-row items-center gap-4 pt-2">
                        <div className="relative flex-1 w-full max-w-sm">
                            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                placeholder="Buscar por lote, contrato ou tipo..."
                                className="pl-8"
                                value={searchTerm}
                                onChange={(e) => {
                                    setSearchTerm(e.target.value)
                                    setCurrentPage(1)
                                }}
                            />
                        </div>
                        <Select value={typeFilter} onValueChange={(v) => {
                            setTypeFilter(v)
                            setCurrentPage(1)
                        }}>
                            <SelectTrigger className="w-full sm:w-[180px]">
                                <SelectValue placeholder="Filtrar por Tipo" />
                            </SelectTrigger>
                            <SelectContent>
                                <SelectItem value="todos">Todos os Tipos</SelectItem>
                                <SelectItem value="OAE">OAE</SelectItem>
                                <SelectItem value="ESCOLA">ESCOLA</SelectItem>
                                <SelectItem value="GERAL">GERAL</SelectItem>
                            </SelectContent>
                        </Select>
                    </div>
                </CardHeader>
                <CardContent>
                    <div className="rounded-md border">
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Lote</TableHead>
                                    <TableHead>Tipo</TableHead>
                                    <TableHead>Contrato Vinculado</TableHead>
                                    <TableHead className="text-center">Empreendimentos</TableHead>
                                    <TableHead>Descrição</TableHead>
                                    <TableHead className="w-[70px]"></TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {paginatedData.length === 0 ? (
                                    <TableRow>
                                        <TableCell colSpan={6} className="text-center h-24 text-muted-foreground">
                                            Nenhum lote encontrado.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    paginatedData.map((item) => (
                                        <TableRow key={item.id}>
                                            <TableCell className="font-medium">
                                                <Link href={`/lotes/${item.id}`} className="hover:underline font-semibold text-primary">
                                                    {item.nome}
                                                </Link>
                                            </TableCell>
                                            <TableCell>
                                                {item.tipo ? (
                                                    <span className={`text-xs font-semibold px-2.5 py-0.5 rounded-full ${TIPO_BADGE[item.tipo] || "bg-muted text-muted-foreground"}`}>
                                                        {item.tipo}
                                                    </span>
                                                ) : (
                                                    <span className="text-muted-foreground text-xs">—</span>
                                                )}
                                            </TableCell>
                                            <TableCell>{item.contratos?.numero || 'Sem contrato'}</TableCell>
                                            <TableCell className="text-center">
                                                <div className="flex items-center justify-center gap-1.5">
                                                    <Building2 className="h-3.5 w-3.5 text-muted-foreground" />
                                                    <span className="font-medium tabular-nums">{item.emp_count}</span>
                                                </div>
                                            </TableCell>
                                            <TableCell className="max-w-[200px] truncate">{item.descricao}</TableCell>
                                            <TableCell>
                                                <DropdownMenu>
                                                    <DropdownMenuTrigger asChild>
                                                        <Button variant="ghost" className="h-8 w-8 p-0">
                                                            <span className="sr-only">Abrir menu</span>
                                                            <MoreHorizontal className="h-4 w-4" />
                                                        </Button>
                                                    </DropdownMenuTrigger>
                                                    <DropdownMenuContent align="end">
                                                        <DropdownMenuItem onClick={() => handleEdit(item)}>
                                                            <Pencil className="mr-2 h-4 w-4" /> Editar
                                                        </DropdownMenuItem>
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
                        totalItems={filteredData.length}
                        onPageChange={setCurrentPage}
                        onPageSizeChange={(size) => {
                            setPageSize(size)
                            setCurrentPage(1)
                        }}
                    />
                </CardContent>
            </Card>

            <LoteDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                loteToEdit={editingItem}
                contratos={contratos}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Tem certeza?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Esta ação excluirá o lote.
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
