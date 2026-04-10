
"use client"

import { HardHat } from "lucide-react"
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"

interface AvancoFisicoCardProps {
    percentualExecutado: number
    valorMedidoTotal: number
    valorContrato: number
    ultimaMedicao: string | null
    /** Optional label override for the "medido" text (defaults to "planejado Execução de Obras") */
    valorLabel?: string
}

const brl = (v: number) =>
    new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL", notation: "compact" }).format(v)

export function AvancoFisicoCard({
    percentualExecutado,
    valorMedidoTotal,
    valorContrato,
    ultimaMedicao,
    valorLabel = "planejado p/ Execução de Obras",
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
                <HardHat className="h-4 w-4 text-muted-foreground" />
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
                    {brl(valorMedidoTotal)}{" "}
                    <span className="font-medium text-foreground">{valorLabel}</span>
                    {valorContrato > 0 && (
                        <> de {brl(valorContrato)} no total</>
                    )}
                </p>

                {/* Estado provisório */}
                <p className="text-xs text-muted-foreground italic">
                    {ultimaMedicao
                        ? `Módulo de medições em breve`
                        : "Baseado em valores planejados"}
                </p>
            </CardContent>
        </Card>
    )
}
