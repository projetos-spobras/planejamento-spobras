
"use client"

import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { ExternalLink } from "lucide-react"
import Link from "next/link"

import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"

export interface RelatedEmpenho {
    id: string
    numero: string
    valor: number
    data_empenho: string | null
    tipo_vinculo: string | null
    vinculo_id: string | null
}

interface RelatedEmpenhosListProps {
    empenhos: RelatedEmpenho[]
    entityType: "Empreendimento" | "Contrato" | "Lote"
}

export function RelatedEmpenhosList({ empenhos, entityType }: RelatedEmpenhosListProps) {
    if (empenhos.length === 0) {
        return (
            <div className="text-center py-8 text-muted-foreground border rounded-md">
                Nenhum empenho vinculado diretamente a este {entityType}.
            </div>
        )
    }

    return (
        <div className="rounded-md border">
            <Table>
                <TableHeader>
                    <TableRow>
                        <TableHead>Número</TableHead>
                        <TableHead>Data</TableHead>
                        <TableHead className="text-right">Valor</TableHead>
                        <TableHead className="w-[50px]"></TableHead>
                    </TableRow>
                </TableHeader>
                <TableBody>
                    {empenhos.map((empenho) => (
                        <TableRow key={empenho.id}>
                            <TableCell className="font-medium">{empenho.numero}</TableCell>
                            <TableCell>
                                {empenho.data_empenho ? format(new Date(empenho.data_empenho), "dd/MM/yyyy") : "-"}
                            </TableCell>
                            <TableCell className="text-right">
                                {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(empenho.valor)}
                            </TableCell>
                            <TableCell>
                                {/* We could link to an edit modal or empenhos page */}
                            </TableCell>
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </div>
    )
}
