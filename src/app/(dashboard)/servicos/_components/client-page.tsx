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

interface ServicesClientPageProps {
    initialServices: any[]
    empreendimentos: any[]
}

export function ServicesClientPage({ initialServices, empreendimentos }: ServicesClientPageProps) {
    const router = useRouter()
    const [isBulkDialogOpen, setIsBulkDialogOpen] = useState(false)

    return (
        <div className="space-y-4">
            <div className="flex justify-end">
                <Button onClick={() => setIsBulkDialogOpen(true)}>
                    <Plus className="mr-2 h-4 w-4" /> Cadastro em Massa
                </Button>
            </div>

            <Card>
                <CardHeader>
                    <CardTitle>Todos os Serviços ({initialServices.length})</CardTitle>
                </CardHeader>
                <CardContent>
                    <div className="rounded-md border">
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Empreendimento</TableHead>
                                    <TableHead>Contrato</TableHead>
                                    <TableHead>Item</TableHead>
                                    <TableHead>Descrição</TableHead>
                                    <TableHead>Valor Total</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {initialServices.map((service) => (
                                    <TableRow key={service.id}>
                                        <TableCell className="font-medium text-xs">
                                            {service.empreendimento?.nome || "N/A"}
                                        </TableCell>
                                        <TableCell className="text-xs text-muted-foreground">
                                            {service.contrato?.numero || "-"}
                                        </TableCell>
                                        <TableCell>{service.codigo}</TableCell>
                                        <TableCell className="max-w-[300px] truncate" title={service.descricao}>
                                            {service.descricao}
                                        </TableCell>
                                        <TableCell>
                                            {service.valor_total ? new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(service.valor_total) : '-'}
                                        </TableCell>
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    </div>
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
