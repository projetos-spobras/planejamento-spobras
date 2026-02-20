
"use client"

import { PlanejamentoFase } from "@/types"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Edit2 } from "lucide-react"
import { Badge } from "@/components/ui/badge"
import { Button } from "@/components/ui/button"
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"

interface FasesTableProps {
    fases: PlanejamentoFase[]
    onEditFase: (fase: PlanejamentoFase) => void
}

const brl = (v: number) =>
    new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL" }).format(v)

const tipoColors: Record<string, string> = {
    receita: "bg-green-100 text-green-800",
    despesa: "bg-red-100 text-red-800",
    execução: "bg-blue-100 text-blue-800",
}

export function FasesTable({ fases, onEditFase }: FasesTableProps) {
    // Map id → nome para lookup de predecessora
    const faseMap = new Map(fases.map(f => [f.id, f.fase]))

    const sorted = [...fases].sort((a, b) => (a.ordem || 0) - (b.ordem || 0))

    if (sorted.length === 0) {
        return (
            <div className="p-6 text-center text-muted-foreground border rounded bg-muted/20">
                Nenhuma fase cadastrada. Clique em "Nova Fase" para começar.
            </div>
        )
    }

    return (
        <div className="rounded-md border">
            <Table>
                <TableHeader>
                    <TableRow>
                        <TableHead className="w-8">#</TableHead>
                        <TableHead>Fase</TableHead>
                        <TableHead>Tipo</TableHead>
                        <TableHead>Início</TableHead>
                        <TableHead>Fim</TableHead>
                        <TableHead>Predecessora</TableHead>
                        <TableHead>Gap</TableHead>
                        <TableHead className="text-right">Valor Planejado</TableHead>
                        <TableHead className="w-10" />
                    </TableRow>
                </TableHeader>
                <TableBody>
                    {sorted.map((f) => {
                        const predssoraNome = f.fase_predecessora_id
                            ? (faseMap.get(f.fase_predecessora_id) ?? "—")
                            : "—"

                        return (
                            <TableRow key={f.id}>
                                <TableCell className="text-muted-foreground text-xs">{f.ordem ?? "—"}</TableCell>
                                <TableCell className="font-medium">{f.fase}</TableCell>
                                <TableCell>
                                    {f.tipo_fase ? (
                                        <span className={`inline-flex items-center rounded-full px-2 py-0.5 text-xs font-medium ${tipoColors[f.tipo_fase] ?? "bg-gray-100 text-gray-800"}`}>
                                            {f.tipo_fase}
                                        </span>
                                    ) : "—"}
                                </TableCell>
                                <TableCell className="text-sm">
                                    {f.data_inicio
                                        ? format(new Date(f.data_inicio + "T12:00:00"), "dd/MM/yyyy", { locale: ptBR })
                                        : "—"}
                                </TableCell>
                                <TableCell className="text-sm">
                                    {f.data_fim
                                        ? format(new Date(f.data_fim + "T12:00:00"), "dd/MM/yyyy", { locale: ptBR })
                                        : "—"}
                                </TableCell>
                                <TableCell className="text-sm text-muted-foreground">
                                    {predssoraNome}
                                </TableCell>
                                <TableCell className="text-sm text-muted-foreground">
                                    {f.fase_predecessora_id && f.dias_folga != null
                                        ? `${f.dias_folga}d`
                                        : "—"}
                                </TableCell>
                                <TableCell className="text-right text-sm font-mono">
                                    {brl(Number(f.valor_planejado) || 0)}
                                </TableCell>
                                <TableCell>
                                    <Button
                                        variant="ghost"
                                        size="icon"
                                        onClick={() => onEditFase(f)}
                                    >
                                        <Edit2 className="h-3.5 w-3.5" />
                                    </Button>
                                </TableCell>
                            </TableRow>
                        )
                    })}
                </TableBody>
            </Table>
        </div>
    )
}
