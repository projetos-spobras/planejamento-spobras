"use client"

import React, { useMemo, useState } from "react"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { RelatedEmpenho } from "@/components/relationships/related-empenhos-list"

interface EmpenhosYearlyChartProps {
    empenhos: RelatedEmpenho[]
}

const BAR_RATIO = 0.85 // Aggressively wide bars to fill space
const MAX_ABSOLUTE_BAR_WIDTH_CAP = 180 

export function EmpenhosYearlyChart({ empenhos }: EmpenhosYearlyChartProps) {
    const [hoveredYear, setHoveredYear] = useState<number | null>(null)

    const yearlyData = useMemo(() => {
        const aggr: Record<number, { liquido: number, liquidado: number }> = {}
        
        empenhos.forEach(e => {
            if (!e.data_empenho) return
            const year = new Date(e.data_empenho).getFullYear()
            if (!aggr[year]) aggr[year] = { liquido: 0, liquidado: 0 }
            
            const liq = e.valor_liquido;
            const can = e.valor_cancelado || 0;
            const val = (typeof liq === 'number') ? liq : (e.valor - can);
            
            aggr[year].liquido += val
            aggr[year].liquidado += (Number(e.valor_liquidado || 0))
        })
        
        const sorted = Object.entries(aggr)
            .map(([year, values]) => ({
                year: Number(year),
                liquido: values.liquido,
                liquidado: values.liquidado,
                saldo: Math.max(0, values.liquido - values.liquidado)
            }))
            .sort((a, b) => a.year - b.year)

        return sorted.map((d, i) => {
            const prev = sorted[i - 1]
            const change = prev ? ((d.liquido / prev.liquido) - 1) * 100 : null
            return { ...d, change }
        })
    }, [empenhos])

    const maxVal = useMemo(() => {
        if (yearlyData.length === 0) return 1
        return Math.max(...yearlyData.map(d => d.liquido), 1) * 1.05 // Minimal headroom
    }, [yearlyData])

    if (yearlyData.length === 0) return null

    // SVG Configuration - AGGRESSIVE FILL
    const width = 800
    const height = 456 
    const paddingX = 75 // Minimal buffer for labels
    const paddingY = 35 // Extra tight vertical padding
    
    const innerWidth = width - paddingX * 2
    const innerHeight = height - paddingY * 2
    
    // Distribution Logic: Maximize footprint
    const effectiveColumnCount = yearlyData.length 
    const columnWidth = innerWidth / effectiveColumnCount
    const barWidth = Math.min(columnWidth * BAR_RATIO, MAX_ABSOLUTE_BAR_WIDTH_CAP)
    
    const totalContentWidth = yearlyData.length * columnWidth
    const horizontalOffset = (innerWidth - totalContentWidth) / 2

    const getY = (val: number) => height - paddingY - (val / maxVal * innerHeight)
    const getBarHeight = (val: number) => (val / maxVal * innerHeight)

    const currencyFormatter = new Intl.NumberFormat('pt-BR', { 
        style: 'currency', 
        currency: 'BRL', 
        notation: "compact",
        maximumFractionDigits: 1
    });

    const hoveredData = hoveredYear !== null 
        ? yearlyData.find(d => d.year === hoveredYear) 
        : null

    const ySteps = [0, 0.25, 0.5, 0.75, 1]

    const points = yearlyData.map((d, i) => ({
        x: paddingX + horizontalOffset + (i * columnWidth) + columnWidth / 2,
        y: getY(d.liquido)
    }))

    const pathData = points.length > 1 
        ? `M ${points[0].x} ${points[0].y} ` + points.slice(1).map(p => `L ${p.x} ${p.y}`).join(" ")
        : ""

    return (
        <Card className="col-span-1 h-full flex flex-col border-muted/50 shadow-sm overflow-hidden bg-white">
            <CardHeader className="flex flex-col space-y-1 pb-2 px-6 pt-5">
                <div className="flex items-center justify-between">
                    <div>
                        <CardTitle className="text-sm font-black uppercase tracking-tight text-primary">Tendência & Evolução</CardTitle>
                        <CardDescription className="text-[10px] font-bold text-muted-foreground/60 uppercase">Análise comparativa anual acumulada</CardDescription>
                    </div>
                </div>
                
                <div className="h-4 flex items-center">
                    {hoveredData ? (
                        <div className="flex items-center gap-3 animate-in fade-in slide-in-from-left-2 duration-300">
                            <span className="text-[10px] font-black bg-primary text-white px-2 py-0.5 rounded-sm">{hoveredData.year}</span>
                            <div className="flex items-center gap-2">
                                <div className="w-2.5 h-2.5 rounded-full bg-emerald-500" />
                                <span className="text-[10px] font-black text-emerald-700">{currencyFormatter.format(hoveredData.liquidado)}</span>
                            </div>
                            <div className="flex items-center gap-2">
                                <div className="w-2.5 h-2.5 rounded-full bg-amber-400" />
                                <span className="text-[10px] font-black text-amber-700">{currencyFormatter.format(hoveredData.saldo)}</span>
                            </div>
                            {hoveredData.change !== null && (
                                <div className={`flex items-center gap-1 pl-2 border-l border-muted ${hoveredData.change >= 0 ? 'text-emerald-600' : 'text-red-600'}`}>
                                    <span className="text-[10px] font-black">{hoveredData.change >= 0 ? "+" : ""}{hoveredData.change.toFixed(1)}%</span>
                                    <span className="text-[8px] font-bold uppercase">evolução</span>
                                </div>
                            )}
                        </div>
                    ) : (
                        <div className="flex items-center gap-4 animate-in fade-in duration-500 opacity-90">
                            <div className="flex items-center gap-1.5 font-bold">
                                <div className="w-2 h-2 rounded-full bg-emerald-500" />
                                <span className="text-[10px] uppercase text-muted-foreground/80 tracking-wider">Liquidado</span>
                            </div>
                            <div className="flex items-center gap-1.5 font-bold">
                                <div className="w-2 h-2 rounded-full bg-amber-400" />
                                <span className="text-[10px] uppercase text-muted-foreground/80 tracking-wider">Saldo</span>
                            </div>
                            <div className="flex items-center gap-1.5 font-bold border-l pl-3">
                                <div className="w-4 h-0.5 bg-blue-600 rounded-full" />
                                <span className="text-[10px] uppercase text-muted-foreground/80 tracking-wider">Evolução</span>
                            </div>
                        </div>
                    )}
                </div>
            </CardHeader>
            <CardContent className="flex-1 min-h-0 pt-0 pb-2 px-0">
                <div className="h-full w-full">
                    <svg 
                        viewBox={`0 0 ${width} ${height}`} 
                        className="w-full h-full overflow-visible"
                        preserveAspectRatio="none"
                    >
                        {/* Grid Lines - Font SOLID BLACK for axes as requested previously */}
                        {ySteps.map((p) => {
                            const yPos = getY(p * (maxVal / 1.05)) 
                            return (
                                <g key={p}>
                                    <line
                                        x1={paddingX}
                                        y1={yPos}
                                        x2={width - paddingX}
                                        y2={yPos}
                                        stroke="currentColor"
                                        strokeDasharray="4 6"
                                        className="text-muted/20"
                                        strokeWidth="1"
                                    />
                                    <text
                                        x={paddingX - 10}
                                        y={yPos + 4}
                                        textAnchor="end"
                                        className="text-[11px] fill-black font-black tabular-nums"
                                    >
                                        {currencyFormatter.format(p * (maxVal / 1.05))}
                                    </text>
                                </g>
                            )
                        })}

                        {/* Baseline */}
                        <line
                            x1={paddingX}
                            y1={height - paddingY}
                            x2={width - paddingX}
                            y2={height - paddingY}
                            stroke="black"
                            strokeOpacity="0.1"
                            strokeWidth="2"
                        />

                        {/* Evolution Line Path Overlay */}
                        <path
                            d={pathData}
                            fill="none"
                            stroke="#2563eb" // standard tailwind blue-600
                            strokeWidth="3.5"
                            strokeLinecap="round"
                            strokeLinejoin="round"
                            className="transition-all duration-700 opacity-60 pointer-events-none"
                        />

                        {/* Bars and Markers */}
                        {yearlyData.map((d, i) => {
                            const x = paddingX + horizontalOffset + (i * columnWidth) + (columnWidth - barWidth) / 2
                            const isHovered = hoveredYear === d.year
                            const pointX = paddingX + horizontalOffset + (i * columnWidth) + columnWidth / 2
                            const pointY = getY(d.liquido)
                            
                            return (
                                <g 
                                    key={d.year} 
                                    onMouseEnter={() => setHoveredYear(d.year)}
                                    onMouseLeave={() => setHoveredYear(null)}
                                    className="cursor-pointer group"
                                >
                                    {/* Column Hover */}
                                    <rect
                                        x={paddingX + horizontalOffset + (i * columnWidth)}
                                        y={paddingY/2}
                                        width={columnWidth}
                                        height={innerHeight + paddingY/2}
                                        fill="transparent"
                                        className="hover:fill-muted/5 transition-colors"
                                    />

                                    {/* Liquidado (Bottom) - Solid Emerald to match pie */}
                                    <rect
                                        x={x}
                                        y={getY(d.liquidado)}
                                        width={barWidth}
                                        height={getBarHeight(d.liquidado)}
                                        className={`fill-emerald-500 transition-all duration-300 ${isHovered ? "brightness-110" : ""}`}
                                        rx="4"
                                    />
                                    
                                    {/* Saldo (Top) - Solid Amber to match pie */}
                                    <rect
                                        x={x}
                                        y={getY(d.liquido)}
                                        width={barWidth}
                                        height={getBarHeight(d.saldo)}
                                        className={`fill-amber-400 transition-all duration-300 ${isHovered ? "brightness-110" : ""}`}
                                        rx="4"
                                    />

                                    {/* Evolution Point marker */}
                                    <circle
                                        cx={pointX}
                                        cy={pointY}
                                        r={isHovered ? 7 : 5}
                                        fill="white"
                                        stroke="#2563eb"
                                        strokeWidth="2"
                                        className="transition-all duration-300"
                                    />

                                    {/* Growth % Flag - ENLARGED FOR BETTER READABILITY */}
                                    {d.change !== null && (
                                        <g transform={`translate(${pointX}, ${pointY - 22})`}>
                                            <rect
                                                x="-27"
                                                y="-12"
                                                width="54"
                                                height="18"
                                                rx="6"
                                                fill={d.change >= 0 ? "#10b981" : "#ef4444"} 
                                                className="shadow-md"
                                            />
                                            <text
                                                textAnchor="middle"
                                                y="1"
                                                className="fill-white text-[11px] font-black"
                                            >
                                                {d.change >= 0 ? "+" : ""}{d.change.toFixed(1)}%
                                            </text>
                                        </g>
                                    )}

                                    {/* Year Label - SOLID BLACK */}
                                    <text
                                        x={pointX}
                                        y={height - paddingY + 28}
                                        textAnchor="middle"
                                        className={`text-[12px] font-black transition-all duration-300 fill-black`}
                                    >
                                        {d.year}
                                    </text>
                                </g>
                            )
                        })}
                    </svg>
                </div>
            </CardContent>
        </Card>
    )
}
