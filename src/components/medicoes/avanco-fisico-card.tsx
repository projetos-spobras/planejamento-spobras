
"use client"

import { TrendingUp } from "lucide-react"
import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"

interface AvancoFisicoCardProps {
    percentualExecutado: number
    valorMedidoTotal: number
    valorContrato: number
    ultimaMedicao: string | null
}

const brl = (v: number) =>
    new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL" }).format(v)

export function AvancoFisicoCard({
    percentualExecutado,
    valorMedidoTotal,
    valorContrato,
    ultimaMedicao,
}: AvancoFisicoCardProps) {
    const pct = Math.min(Math.max(Number(percentualExecutado) || 0, 0), 100)

    const progressColor =
        pct >= 80 ? "bg-emerald-500" :
            pct >= 50 ? "bg-blue-500" :
                pct >= 20 ? "bg-amber-500" :
                    "bg-rose-400"

    return (
        <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                <CardTitle className="text-sm font-medium">Avanço Físico</CardTitle>
                <TrendingUp className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent className="space-y-3">
                {/* Percentual principal */}
                <div className="text-2xl font-bold">
                    {pct.toFixed(1)}%
                </div>

                {/* Barra de progresso */}
                <div className="relative h-2 w-full overflow-hidden rounded-full bg-muted">
                    <div
                        className={`h-full transition-all duration-500 ${progressColor}`}
                        style={{ width: `${pct}%` }}
                    />
                </div>

                {/* Valor medido vs contrato */}
                <p className="text-xs text-muted-foreground">
                    {brl(valorMedidoTotal)} medido de{" "}
                    <span className="font-medium text-foreground">{brl(valorContrato)}</span>
                </p>

                {/* Última medição aprovada */}
                <p className="text-xs text-muted-foreground">
                    {ultimaMedicao
                        ? `Última medição aprovada: ${format(new Date(ultimaMedicao + "T12:00:00"), "dd/MM/yyyy", { locale: ptBR })}`
                        : "Sem medições aprovadas"}
                </p>
            </CardContent>
        </Card>
    )
}
