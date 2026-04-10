"use client"

import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { RelatedEmpenho } from "@/components/relationships/related-empenhos-list"

interface EmpenhosPieChartProps {
    empenhos: RelatedEmpenho[]
    title?: string
    showBadge?: boolean
}

export function EmpenhosPieChart({ 
    empenhos, 
    title = "Consolidado de Empenhos", 
    showBadge = true 
}: EmpenhosPieChartProps) {
    const totalEmpenhoLiquido = empenhos.reduce((acc, e) => {
        const liq = e.valor_liquido;
        const can = e.valor_cancelado || 0;
        const val = (typeof liq === 'number') ? liq : (e.valor - can);
        return acc + val;
    }, 0);
    
    const totalLiquidado = empenhos.reduce((acc, e) => acc + (Number(e.valor_liquidado || 0)), 0);
    const saldoEmpenho = Math.max(0, totalEmpenhoLiquido - totalLiquidado);
    
    const currencyFormatter = new Intl.NumberFormat('pt-BR', { 
        style: 'currency', 
        currency: 'BRL', 
        notation: "compact" 
    });

    const radius = 18;
    const circ = 2 * Math.PI * radius;
    const liquidadoPct = totalEmpenhoLiquido > 0 ? (totalLiquidado / totalEmpenhoLiquido) : 0;

    return (
        <Card className="h-[220px]">
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-1">
                <CardTitle className="text-sm font-medium">{title}</CardTitle>
                {showBadge && (
                    <div className="text-[10px] font-bold text-emerald-600 px-1.5 py-0.5 bg-emerald-100 rounded-full">VISÃO GERAL</div>
                )}
            </CardHeader>
            <CardContent className="pt-0">
                <div className="flex items-center gap-6">
                    <div className="relative flex items-center justify-center w-20 h-20">
                        <svg width="80" height="80" viewBox="0 0 50 50" className="transform -rotate-90">
                            {/* Base/Saldo circle */}
                            <circle
                                cx="25"
                                cy="25"
                                r={radius}
                                fill="transparent"
                                stroke="currentColor"
                                strokeWidth="7"
                                className="text-amber-400/30 dark:text-amber-400/20"
                            />
                            {/* Liquidado segment */}
                            <circle
                                cx="25"
                                cy="25"
                                r={radius}
                                fill="transparent"
                                stroke="currentColor"
                                strokeWidth="7"
                                strokeDasharray={circ}
                                strokeDashoffset={circ * (1 - liquidadoPct)}
                                strokeLinecap="round"
                                className="text-emerald-500"
                            />
                        </svg>
                        <div className="absolute inset-0 flex items-center justify-center text-xs font-bold">
                            {totalEmpenhoLiquido > 0 ? Math.round((totalLiquidado / totalEmpenhoLiquido) * 100) : 0}%
                        </div>
                    </div>
                    
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 flex-1">
                        <div className="flex flex-col gap-1">
                            <span className="text-[10px] text-muted-foreground uppercase font-bold tracking-wider">Líquido Total</span>
                            <span className="text-lg font-bold">
                                {currencyFormatter.format(totalEmpenhoLiquido)}
                            </span>
                        </div>
                        
                        <div className="flex flex-col gap-1 border-l pl-4">
                            <div className="flex items-center gap-1.5">
                                <div className="w-2 h-2 rounded-full bg-emerald-500" />
                                <span className="text-[10px] text-muted-foreground uppercase font-bold tracking-wider">Liquidado</span>
                            </div>
                            <span className="text-lg font-bold text-emerald-600">
                                {currencyFormatter.format(totalLiquidado)}
                            </span>
                        </div>
                        
                        <div className="flex flex-col gap-1 border-l pl-4">
                            <div className="flex items-center gap-1.5">
                                <div className="w-2 h-2 rounded-full bg-amber-400" />
                                <span className="text-[10px] text-muted-foreground uppercase font-bold tracking-wider">Saldo</span>
                            </div>
                            <span className="text-lg font-bold text-amber-600">
                                {currencyFormatter.format(saldoEmpenho)}
                            </span>
                        </div>
                    </div>
                </div>
            </CardContent>
        </Card>
    );
}
