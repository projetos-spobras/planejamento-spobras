"use client"

import { useState } from "react"
import { Plus } from "lucide-react"
import { Button } from "@/components/ui/button"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { BulkServiceDialog } from "@/components/relationships/bulk-service-dialog"
import { useRouter } from "next/navigation"
import { DataTablePagination } from "@/components/ui/data-table-pagination"
import { useUrlFilters } from "@/hooks/use-url-filters"

interface ServicesClientPageProps {
    initialServices: any[]
    totalItems: number
    empreendimentos: any[]
}

export function ServicesClientPage({ initialServices, totalItems, empreendimentos }: ServicesClientPageProps) {
    const { setFilter, getFilter } = useUrlFilters()
    const router = useRouter()
    const [isBulkDialogOpen, setIsBulkDialogOpen] = useState(false)

    const currentPage = Number(getFilter("page")) || 1
    const pageSize = Number(getFilter("pageSize")) || 12
    const totalPages = Math.ceil(totalItems / pageSize)

    return (
        <div className="space-y-4">
            <div className="flex justify-end">
                <Button onClick={() => setIsBulkDialogOpen(true)}>
                    <Plus className="mr-2 h-4 w-4" /> Cadastro em Massa
                </Button>
            </div>

            <Card>
                <CardHeader>
                    <CardTitle>Listagem de Serviços</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                    <div className="rounded-md border">
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Empreendimento</TableHead>
                                    <TableHead>Tipo</TableHead>
                                    <TableHead>Descrição</TableHead>
                                    <TableHead>Início</TableHead>
                                    <TableHead>Duração</TableHead>
                                    <TableHead>Contrato</TableHead>
                                    <TableHead>Valor Total</TableHead>
                                    <TableHead>Status</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {initialServices.map((service) => (
                                    <TableRow key={service.id}>
                                        <TableCell className="font-medium text-xs">
                                            {service.empreendimento?.nome || "N/A"}
                                        </TableCell>
                                        <TableCell className="text-xs text-muted-foreground">
                                            {service.tipo || "-"}
                                        </TableCell>
                                        <TableCell className="max-w-[300px] truncate" title={service.descricao}>
                                            {service.descricao}
                                        </TableCell>
                                        <TableCell>
                                            {service.data_inicio ? new Date(service.data_inicio).toLocaleDateString('pt-BR') : "-"}
                                        </TableCell>
                                        <TableCell>
                                            {service.duracao_dias ? `${service.duracao_dias} dias` : "-"}
                                        </TableCell>
                                        <TableCell className="text-xs text-muted-foreground">
                                            {service.contrato?.numero || "-"}
                                        </TableCell>
                                        <TableCell>
                                            {service.valor_total ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(service.valor_total) : '-'}
                                        </TableCell>
                                        <TableCell className="text-xs whitespace-nowrap">
                                            <span className="px-2 py-1 rounded-full bg-secondary text-secondary-foreground text-[10px] uppercase font-bold">
                                                {service.status || '-'}
                                            </span>
                                        </TableCell>
                                    </TableRow>
                                ))}
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

            <BulkServiceDialog
                open={isBulkDialogOpen}
                onOpenChange={setIsBulkDialogOpen}
                empreendimentos={empreendimentos}
                onSuccess={() => router.refresh()}
            />
        </div>
    )
}
