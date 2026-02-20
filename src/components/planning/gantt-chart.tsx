
"use client"

import { useMemo, useState } from "react"
import { format, differenceInDays, addDays, startOfMonth } from "date-fns"
import { ptBR } from "date-fns/locale"
import { PlanejamentoFase } from "@/types"
import { cn } from "@/lib/utils"

interface GanttChartProps {
    fases: PlanejamentoFase[]
    onEditFase: (fase: PlanejamentoFase) => void
    /** Percentage 0–100 of actual physical progress from approved measurements */
    avancoFisico?: number
}

export function GanttChart({ fases, onEditFase, avancoFisico }: GanttChartProps) {
    const [zoom, setZoom] = useState(20) // pixels per day

    const hasMedicoes = avancoFisico !== undefined && avancoFisico > 0

    // Determine constraints
    const { minDate, maxDate, totalDays } = useMemo(() => {
        if (fases.length === 0) return { minDate: new Date(), maxDate: new Date(), totalDays: 0 }

        const dates = fases.flatMap(f => [
            f.data_inicio ? new Date(f.data_inicio) : null,
            f.data_fim ? new Date(f.data_fim) : null
        ]).filter(Boolean) as Date[]

        if (dates.length === 0) return { minDate: new Date(), maxDate: new Date(), totalDays: 0 }

        const min = addDays(new Date(Math.min(...dates.map(d => d.getTime()))), -7)
        const max = addDays(new Date(Math.max(...dates.map(d => d.getTime()))), 14)
        return { minDate: min, maxDate: max, totalDays: differenceInDays(max, min) }
    }, [fases])

    const sortedFases = useMemo(() => {
        return [...fases].sort((a, b) => (a.ordem || 0) - (b.ordem || 0))
    }, [fases])

    if (fases.length === 0) {
        return <div className="p-8 text-center text-muted-foreground border rounded bg-muted/20">Nenhuma fase planejada.</div>
    }

    const chartWidth = totalDays * zoom
    const rowHeight = 40
    const hasDates = fases.some(f => f.data_inicio && f.data_fim)

    if (!hasDates) {
        return (
            <div className="p-8 text-center text-muted-foreground border rounded bg-muted/20">
                Defina datas de início e fim nas fases para visualizar o cronograma.
            </div>
        )
    }

    // Generate Month Ticks
    const months: Date[] = []
    let current = startOfMonth(minDate)
    while (current <= maxDate) {
        months.push(current)
        current = addDays(current, 32)
        current = startOfMonth(current)
    }

    return (
        <div className="w-full border rounded shadow-sm bg-white overflow-hidden flex flex-col">
            {/* Toolbar */}
            <div className="p-2 border-b flex justify-between items-center bg-gray-50">
                <div className="flex items-center gap-2">
                    <span className="text-sm font-medium">Timeline de Execução</span>
                    {/* [P2] Badge de avanço físico */}
                    {hasMedicoes ? (
                        <span className="inline-flex items-center rounded-full bg-emerald-100 text-emerald-800 px-2 py-0.5 text-xs font-medium">
                            Avanço real: {(avancoFisico!).toFixed(1)}%
                        </span>
                    ) : (
                        <span className="inline-flex items-center rounded-full bg-amber-100 text-amber-700 px-2 py-0.5 text-xs font-medium">
                            Sem medições registradas
                        </span>
                    )}
                </div>
                <div className="space-x-2">
                    <button onClick={() => setZoom(z => Math.max(5, z - 5))} className="px-2 py-1 text-xs border rounded bg-white hover:bg-gray-50">- Zoom</button>
                    <button onClick={() => setZoom(z => Math.min(50, z + 5))} className="px-2 py-1 text-xs border rounded bg-white hover:bg-gray-50">+ Zoom</button>
                </div>
            </div>

            {/* Scrollable Container */}
            <div className="overflow-auto max-h-[600px] relative">
                <div style={{ width: `${Math.max(100, Math.ceil(chartWidth))}px`, minWidth: "100%" }}>

                    {/* Header */}
                    <div className="sticky top-0 z-10 bg-white border-b h-[50px] relative">
                        {months.map(m => {
                            const left = differenceInDays(m, minDate) * zoom
                            return (
                                <div key={m.toISOString()} className="absolute top-0 text-xs font-semibold text-gray-500 border-l pl-1 pt-1" style={{ left, height: 20 }}>
                                    {format(m, "MMMM yyyy", { locale: ptBR })}
                                </div>
                            )
                        })}
                        {/* Day markers */}
                        <div className="absolute top-[20px] w-full h-[30px] flex border-t">
                            {Array.from({ length: totalDays }).map((_, i) => (
                                (i % 7 === 0) && (
                                    <div key={i} className="absolute text-[10px] text-gray-400 border-l pl-0.5" style={{ left: i * zoom, top: 5 }}>
                                        {format(addDays(minDate, i), "dd")}
                                    </div>
                                )
                            ))}
                        </div>
                    </div>

                    {/* Body */}
                    <div className="relative" style={{ height: sortedFases.length * rowHeight }}>
                        {/* Row backgrounds */}
                        {sortedFases.map((_, i) => (
                            <div key={i} className={cn("absolute w-full border-b", i % 2 === 0 ? "bg-white" : "bg-slate-50")} style={{ top: i * rowHeight, height: rowHeight }} />
                        ))}

                        {/* Today Line */}
                        {(() => {
                            const today = new Date()
                            if (today >= minDate && today <= maxDate) {
                                const left = differenceInDays(today, minDate) * zoom
                                return <div className="absolute top-0 bottom-0 border-l-2 border-red-400 z-10" style={{ left, height: '100%' }} title="Hoje" />
                            }
                            return null
                        })()}

                        {/* Dependency lines (SVG) */}
                        <svg className="absolute top-0 left-0 w-full h-full pointer-events-none z-0">
                            {sortedFases.map(f => {
                                if (!f.fase_predecessora_id) return null
                                const pred = sortedFases.find(p => p.id === f.fase_predecessora_id)
                                if (!pred || !pred.data_fim) return null

                                const myStart = f.data_inicio ? differenceInDays(new Date(f.data_inicio), minDate) * zoom : 0
                                const predEnd = differenceInDays(new Date(pred.data_fim), minDate) * zoom

                                const myIndex = sortedFases.findIndex(x => x.id === f.id)
                                const predIndex = sortedFases.findIndex(x => x.id === pred.id)

                                const x1 = predEnd
                                const y1 = predIndex * rowHeight + (rowHeight / 2)
                                const x2 = myStart
                                const y2 = myIndex * rowHeight + (rowHeight / 2)

                                const path = `M ${x1} ${y1} C ${x1 + 20} ${y1}, ${x2 - 20} ${y2}, ${x2} ${y2}`

                                return <path key={`link-${f.id}`} d={path} fill="none" stroke="#cbd5e1" strokeWidth="2" markerEnd="url(#arrow)" />
                            })}
                            <defs>
                                <marker id="arrow" markerWidth="6" markerHeight="6" refX="6" refY="3" orient="auto" markerUnits="strokeWidth">
                                    <path d="M0,0 L0,6 L6,3 z" fill="#cbd5e1" />
                                </marker>
                            </defs>
                        </svg>

                        {/* Bars with real progress overlay */}
                        {sortedFases.map((f, i) => {
                            if (!f.data_inicio || !f.data_fim) return null
                            const start = new Date(f.data_inicio)
                            const end = new Date(f.data_fim)
                            const offset = differenceInDays(start, minDate) * zoom
                            const width = Math.max(zoom, differenceInDays(end, start) * zoom)

                            let bgColor = "bg-blue-500"
                            if (f.tipo_fase === "receita") bgColor = "bg-green-500"
                            if (f.tipo_fase === "despesa") bgColor = "bg-red-500"

                            // [P2] Calcular a largura da barra de avanço real
                            // Distribui o progresso global (avancoFisico) proporcionalmente pelo valor_planejado da fase
                            const realWidth = hasMedicoes
                                ? Math.min(width, width * ((avancoFisico!) / 100))
                                : 0

                            return (
                                <div
                                    key={f.id}
                                    className={cn("absolute rounded shadow-sm cursor-pointer hover:brightness-110 transition-all z-10 overflow-hidden", bgColor)}
                                    style={{
                                        left: offset,
                                        top: i * rowHeight + 5,
                                        height: rowHeight - 10,
                                        width: width,
                                        opacity: 0.85,
                                    }}
                                    onClick={() => onEditFase(f)}
                                    title={`${f.fase} (${format(start, 'dd/MM')} - ${format(end, 'dd/MM')}) | R$ ${f.valor_planejado}`}
                                >
                                    {/* [P2] Barra de avanço real sobreposta */}
                                    {hasMedicoes && realWidth > 0 && (
                                        <div
                                            className="absolute top-0 left-0 h-full bg-white/30 border-r-2 border-white/60"
                                            style={{ width: realWidth }}
                                        />
                                    )}
                                    <span className="absolute inset-0 flex items-center px-2 text-xs text-white font-medium truncate">
                                        {f.fase}
                                    </span>
                                </div>
                            )
                        })}
                    </div>
                </div>
            </div>
        </div>
    )
}
