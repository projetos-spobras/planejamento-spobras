"use client"

import React, { useMemo } from "react"

interface DistribuicaoItem {
    servico_id: string
    ano: number
    mes: number
    valor: number | string
}

interface FinancialChartProps {
    servicos: any[]
    financialValues: Record<string, Array<{ id: string, valor: string, fonte: string }>>
}

const mesesAbrev = ["Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago", "Set", "Out", "Nov", "Dez"]

function parseCurrencyValue(value: string) {
    if (!value) return 0
    const cleanValue = value.replace(/\./g, "").replace(",", ".")
    return parseFloat(cleanValue) || 0
}

export function FinancialChart({ servicos, financialValues }: FinancialChartProps) {
    const now = new Date()
    const currentYear = now.getFullYear()
    const currentMonth = now.getMonth() + 1 // 1-12

    // Aggregate all planned values by year-month across all services
    const aggregated = useMemo(() => {
        const relevantServicos = servicos.filter(s => s.acompanha_financeiro)
        const relevantIds = new Set(relevantServicos.map(s => s.id))

        // Create a map to hold values per service per year-month: { anoMes: { servicoId: valor } }
        const preciseMap: Record<string, Record<string, number>> = {}
        
        // 1. Initialize with database values
        relevantServicos.forEach(s => {
            ;(s.distribuicao_financeira || []).forEach((d: any) => {
                const anoMesKey = `${d.ano}-${d.mes}`
                if (!preciseMap[anoMesKey]) preciseMap[anoMesKey] = {}
                preciseMap[anoMesKey][s.id] = (preciseMap[anoMesKey][s.id] || 0) + Number(d.valor || 0)
            })
        })

        // 2. Override with current UI state (handles unsaved changes and expanded rows)
        for (const key in financialValues) {
            const parts = key.split("-")
            if (parts.length >= 3) {
                // Key format usually: ${servicoId}-${ano}-${mes}
                // We extract components carefully
                const mesIdx = parts.length - 1
                const anoIdx = parts.length - 2
                const servicoId = parts.slice(0, anoIdx).join("-")

                if (relevantIds.has(servicoId)) {
                    const ano = parts[anoIdx]
                    const mes = parts[mesIdx]
                    
                    const entries = financialValues[key] || []
                    const val = entries.reduce((sum, entry) => sum + (parseCurrencyValue(entry.valor) || 0), 0)

                    const anoMesKey = `${ano}-${mes}`
                    if (!preciseMap[anoMesKey]) preciseMap[anoMesKey] = {}
                    preciseMap[anoMesKey][servicoId] = val
                }
            }
        }

        // 3. Flatten the map to get total per year-month
        const finalMap: Record<string, number> = {}
        Object.entries(preciseMap).forEach(([anoMes, servicosMap]) => {
            finalMap[anoMes] = Object.values(servicosMap).reduce((sum, v) => sum + v, 0)
        })

        return finalMap
    }, [servicos, financialValues])

    // Generate 24-month window centered on current month (12 prior + current + 11 future)
    const months = useMemo(() => {
        const result: { ano: number; mes: number; label: string; valor: number; isCurrent: boolean; isPast: boolean }[] = []

        // Check what years we have data for
        const yearsWithData = new Set<number>()
        Object.keys(aggregated).forEach(key => {
            const [ano] = key.split("-").map(Number)
            if (ano) yearsWithData.add(ano)
        })

        // Build from first year with data or currentYear-1
        const startYear = Math.min(...Array.from(yearsWithData), currentYear - 1)
        const endYear = Math.max(...Array.from(yearsWithData), currentYear + 1)

        for (let ano = startYear; ano <= endYear; ano++) {
            for (let mes = 1; mes <= 12; mes++) {
                const anoMesKey = `${ano}-${mes}`
                const valor = aggregated[anoMesKey] || 0
                const isCurrent = ano === currentYear && mes === currentMonth
                const isPast = ano < currentYear || (ano === currentYear && mes < currentMonth)

                // Only include months with data or the current/future months of current year
                if (valor > 0 || (ano === currentYear)) {
                    result.push({
                        ano,
                        mes,
                        label: `${mesesAbrev[mes - 1]}/${String(ano).slice(2)}`,
                        valor,
                        isCurrent,
                        isPast,
                    })
                }
            }
        }

        return result
    }, [aggregated, currentYear, currentMonth])

    const maxValor = useMemo(() => Math.max(...months.map(m => m.valor), 1), [months])

    // Year totals
    const yearTotals = useMemo(() => {
        const totals: Record<number, number> = {}
        months.forEach(m => {
            totals[m.ano] = (totals[m.ano] || 0) + m.valor
        })
        return totals
    }, [months])

    if (months.length === 0) {
        return (
            <div className="flex items-center justify-center h-40 text-muted-foreground text-sm">
                Nenhuma distribuição financeira cadastrada.
            </div>
        )
    }

    const formatCompact = (val: number) =>
        new Intl.NumberFormat("pt-BR", {
            style: "currency",
            currency: "BRL",
            notation: "compact",
            maximumFractionDigits: 1,
        }).format(val)

    const formatFull = (val: number) =>
        new Intl.NumberFormat("pt-BR", { style: "currency", currency: "BRL" }).format(val)

    return (
        <div className="space-y-4">
            {/* Year totals legend */}
            <div className="flex flex-wrap gap-4">
                {Object.entries(yearTotals).map(([ano, total]) => (
                    <div key={ano} className="flex items-center gap-2 text-sm">
                        <span className="font-semibold text-muted-foreground">{ano}:</span>
                        <span className="font-bold">{formatCompact(total)}</span>
                    </div>
                ))}
            </div>

            {/* Chart — wrapper allows horizontal scroll without clipping tooltips vertically */}
            <div className="relative" style={{ overflowX: "auto", overflowY: "visible", paddingTop: 56 }}>
                <div className="min-w-max" style={{ overflow: "visible" }}>
                    <div className="flex items-end gap-1 px-2 relative" style={{ height: 180, overflow: "visible" }}>
                        {months.map((m, idx) => {
                            const heightPct = maxValor > 0 ? (m.valor / maxValor) * 100 : 0
                            const barColor = m.isCurrent
                                ? "bg-blue-500"
                                : m.isPast
                                ? "bg-muted-foreground/40"
                                : "bg-emerald-500"

                            // Year separator: show when year changes
                            const prevMonth = months[idx - 1]
                            const showYearSep = idx > 0 && prevMonth && prevMonth.ano !== m.ano

                            return (
                                <React.Fragment key={`${m.ano}-${m.mes}`}>
                                    {showYearSep && (
                                        <div className="w-px bg-border/60 self-stretch mx-1" />
                                    )}
                                    <div className="flex flex-col items-center group relative" style={{ width: 36, overflow: "visible" }}>
                                        {/* Tooltip — positioned above bar, z-50 ensures it's on top */}
                                        <div
                                            className="absolute left-1/2 -translate-x-1/2 bg-popover border rounded-md px-3 py-2 text-xs shadow-xl whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none"
                                            style={{ bottom: "100%", marginBottom: 8, zIndex: 9999 }}
                                        >
                                            <div className="font-semibold">{mesesAbrev[m.mes - 1]} {m.ano}</div>
                                            <div className="text-emerald-600 font-bold">{formatFull(m.valor)}</div>
                                        </div>

                                        {/* Bar */}
                                        <div className="relative flex flex-col justify-end w-full" style={{ height: 160 }}>
                                            <div
                                                className={`w-full rounded-t-sm transition-all ${barColor} ${m.isCurrent ? "ring-2 ring-blue-400 ring-offset-1" : ""}`}
                                                style={{ height: `${Math.max(heightPct, m.valor > 0 ? 2 : 0)}%` }}
                                            />
                                        </div>

                                        {/* Label */}
                                        <div className={`text-[9px] mt-1 text-center leading-tight ${m.isCurrent ? "font-bold text-blue-600" : "text-muted-foreground"}`}>
                                            {m.label}
                                        </div>
                                    </div>
                                </React.Fragment>
                            )
                        })}
                    </div>

                    {/* Legend */}
                    <div className="flex items-center gap-4 mt-3 px-2 text-xs text-muted-foreground">
                        <div className="flex items-center gap-1.5">
                            <div className="w-3 h-3 rounded-sm bg-muted-foreground/40" />
                            <span>Meses passados</span>
                        </div>
                        <div className="flex items-center gap-1.5">
                            <div className="w-3 h-3 rounded-sm bg-blue-500 ring-1 ring-blue-400" />
                            <span>Mês atual</span>
                        </div>
                        <div className="flex items-center gap-1.5">
                            <div className="w-3 h-3 rounded-sm bg-emerald-500" />
                            <span>Meses futuros</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
