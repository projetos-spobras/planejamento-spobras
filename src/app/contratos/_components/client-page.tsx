
"use client"

import { useState, useEffect } from "react"
import Link from "next/link"
import {
    Plus,
    MoreHorizontal,
    Pencil,
    Trash2,
    Search,
    ArrowUpRight
} from "lucide-react"
import { toast } from "sonner"
import { format } from "date-fns"

import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
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
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select"

import { Contrato } from "@/types"
import { deleteContrato } from "@/app/(dashboard)/contratos/actions"
import { ContratoDialog } from "./contrato-dialog"
import { DataTablePagination } from "@/components/ui/data-table-pagination"
import { useUrlFilters } from "@/hooks/use-url-filters"

interface ContratosClientProps {
    data: Contrato[]
    totalItems: number
}

export function ContratosClient({ data, totalItems }: ContratosClientProps) {
    const { setFilter, getFilter } = useUrlFilters()
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [editingItem, setEditingItem] = useState<Contrato | null>(null)

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

    // Get unique statuses from the data on the current page.
    // Ideally this should come from a lookup table passed from server, but for now we keep it dynamic based on data
    // or we could hardcode known statuses if preferred.
    // For now, let's keep the existing logic but just warn it might only show statuses present on the page.
    // Better yet, let's just show all statuses if we had a list, but we don't passed in.
    // Let's rely on the unique statuses of the *fetched* data, but that is suboptimal for filtering.
    // However, the user didn't ask to fix specific status filters here, just "search".
    // I will keep uniqueStatuses logic but derived from `data` (current page).
    // NOTE: This means the filter dropdown might only show statuses visible on the current page.
    // This is a known limitation when moving to server-side without a separate status list fetch.
    const uniqueStatuses = Array.from(new Set(data.map(i => i.status).filter(Boolean))) as string[]

    const handleEdit = (item: Contrato) => {
        setEditingItem(item)
        setIsDialogOpen(true)
    }

    const handleDelete = async () => {
        if (!deleteId) return
        setIsDeleting(true)
        try {
            const res = await deleteContrato(deleteId)
            if (res.success) {
                toast.success("Contrato excluído")
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

    // List of possible parents for the dropdown (exclude self)
    const possibleParents = data.map(c => ({ id: c.id, numero: c.numero }))

    return (
        <div className="space-y-6">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4">
                <h1 className="text-3xl font-bold">Contratos</h1>
                <Button onClick={() => {
                    setEditingItem(null)
                    setIsDialogOpen(true)
                }}>
                    <Plus className="mr-2 h-4 w-4" /> Novo Contrato
                </Button>
            </div>

            <Card>
                <CardHeader className="pb-3">
                    <CardTitle>Listagem</CardTitle>
                    <div className="flex flex-col sm:flex-row items-center gap-4 pt-2">
                        <div className="relative flex-1 max-w-sm w-full">
                            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
                            <Input
                                placeholder="Buscar por número ou contratada..."
                                className="pl-8"
                                value={searchValue}
                                onChange={(e) => setSearchValue(e.target.value)}
                            />
                        </div>
                        <div className="w-full sm:w-[200px]">
                            <Select value={statusFilter} onValueChange={(value) => setFilter("status", value)}>
                                <SelectTrigger>
                                    <SelectValue placeholder="Status" />
                                </SelectTrigger>
                                <SelectContent>
                                    <SelectItem value="all">Todos</SelectItem>
                                    {uniqueStatuses.map(s => (
                                        <SelectItem key={s} value={s}>{s}</SelectItem>
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
                                    <TableHead>Número</TableHead>
                                    <TableHead>Tipo</TableHead>
                                    <TableHead>Status</TableHead>
                                    <TableHead>Contratada</TableHead>
                                    <TableHead>Objeto</TableHead>
                                    <TableHead>Período</TableHead>
                                    <TableHead className="text-right">Valor</TableHead>
                                    <TableHead className="w-[70px]"></TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {paginatedData.length === 0 ? (
                                    <TableRow>
                                        <TableCell colSpan={8} className="text-center h-24 text-muted-foreground">
                                            Nenhum contrato encontrado.
                                        </TableCell>
                                    </TableRow>
                                ) : (
                                    paginatedData.map((item) => (
                                        <TableRow key={item.id}>
                                            <TableCell className="font-medium">
                                                <div className="flex items-center gap-2">
                                                    {item.contrato_pai_id && <ArrowUpRight className="h-3 w-3 text-muted-foreground" />}
                                                    <Link href={`/contratos/${item.id}`} className="hover:underline font-semibold text-primary">
                                                        {item.numero}
                                                    </Link>
                                                </div>
                                            </TableCell>
                                            <TableCell>{item.tipo}</TableCell>
                                            <TableCell>
                                                <span className="inline-flex items-center rounded-full border px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2 border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80">
                                                    {item.status || 'N/A'}
                                                </span>
                                            </TableCell>
                                            <TableCell>{item.contratada}</TableCell>
                                            <TableCell className="max-w-[200px] truncate" title={item.objeto || ""}>
                                                {item.objeto}
                                            </TableCell>
                                            <TableCell className="text-xs text-muted-foreground">
                                                {item.data_inicio ? format(new Date(item.data_inicio), "dd/MM/yyyy") : "-"} a {item.data_fim ? format(new Date(item.data_fim), "dd/MM/yyyy") : "-"}
                                            </TableCell>
                                            <TableCell className="text-right">
                                                <div className="font-bold">
                                                    {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(item.valor_total || 0)}
                                                </div>
                                                <div className="flex flex-col items-end gap-0.5 mt-1">
                                                    {item.valor_aditamento && item.valor_aditamento !== 0 ? (
                                                        <div className="text-[10px] text-emerald-600 font-medium whitespace-nowrap">
                                                            Adit. + {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL', notation: 'compact' }).format(item.valor_aditamento)}
                                                        </div>
                                                    ) : null}
                                                    {item.valor_reajuste && item.valor_reajuste !== 0 ? (
                                                        <div className="text-[10px] text-blue-600 font-medium whitespace-nowrap opacity-70">
                                                            ({item.percentual_reajuste || (item.valor_original && item.valor_original > 0 
                                                                ? ((item.valor_reajuste / item.valor_original) * 100).toFixed(1) + "%"
                                                                : "0%")} {item.indice_nome && <span className="uppercase">{item.indice_nome}</span>})
                                                        </div>
                                                    ) : null}
                                                </div>
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
                        totalItems={totalItems}
                        onPageChange={(page) => setFilter("page", String(page))}
                        onPageSizeChange={(size) => {
                            setFilter("pageSize", String(size))
                        }}
                    />
                </CardContent>
            </Card>

            <ContratoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                contratoToEdit={editingItem}
                possibleParents={possibleParents}
            />

            <AlertDialog open={!!deleteId} onOpenChange={(open) => !open && setDeleteId(null)}>
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>Tem certeza?</AlertDialogTitle>
                        <AlertDialogDescription>
                            Excluir este contrato pode afetar lotes e itens vinculados.
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
