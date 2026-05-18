
"use client"

import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { ExternalLink, ChevronDown, ChevronRight, Calendar, DollarSign, Briefcase } from "lucide-react"
import Link from "next/link"
import React, { useState } from "react"

import {
    Card,
    CardContent,
    CardHeader,
    CardTitle,
    CardDescription
} from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"

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
    valor_cancelado?: number
    valor_liquido?: number
    valor_liquidado?: number
    data_empenho: string | null
    tipo_vinculo: string | null
    vinculo_id: string | null
    contrato_numero?: string | null
    valor_contrato?: number
}

interface RelatedEmpenhosListProps {
    empenhos: RelatedEmpenho[]
    entityType: "Empreendimento" | "Contrato" | "Lote"
}

export function RelatedEmpenhosList({ empenhos, entityType }: RelatedEmpenhosListProps) {
    const [expandedGroups, setExpandedGroups] = useState<Record<string, boolean>>({});

    const toggleGroup = (group: string) => {
        setExpandedGroups(prev => ({ ...prev, [group]: !prev[group] }));
    };

    if (empenhos.length === 0) {
        return (
            <div className="text-center py-8 text-muted-foreground border rounded-md">
                Nenhum empenho localizado para este {entityType}.
            </div>
        )
    }

    // Group empenhos by contract
    const grouped = empenhos.reduce((acc, emp) => {
        const key = emp.contrato_numero || "Empenhos Diretos";
        if (!acc[key]) acc[key] = [];
        acc[key].push(emp);
        return acc;
    }, {} as Record<string, RelatedEmpenho[]>);

    // Sort groups: "Empenhos Diretos" last, others by number
    const groupKeys = Object.keys(grouped).sort((a, b) => {
        if (a === "Empenhos Diretos") return 1;
        if (b === "Empenhos Diretos") return -1;
        return a.localeCompare(b);
    });

    const currencyFormatter = new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' });

    if (entityType === "Contrato") {
        return (
            <Table>
                <TableHeader className="bg-muted/30">
                    <TableRow>
                        <TableHead className="pl-6">Número Empenho</TableHead>
                        <TableHead>Data</TableHead>
                        <TableHead className="text-right">Empenhado</TableHead>
                        <TableHead className="text-right">Cancelado</TableHead>
                        <TableHead className="text-right">Líquido</TableHead>
                        <TableHead className="text-right">Liquidado</TableHead>
                        <TableHead className="text-right pr-6">Saldo</TableHead>
                    </TableRow>
                </TableHeader>
                <TableBody>
                    {empenhos.sort((a,b) => {
                        const da = a.data_empenho ? new Date(a.data_empenho).getTime() : 0;
                        const db = b.data_empenho ? new Date(b.data_empenho).getTime() : 0;
                        return db - da;
                    }).map((empenho) => {
                        const empenhado = Number(empenho.valor || 0);
                        const cancelado = Number(empenho.valor_cancelado || 0);
                        const liquidado = Number(empenho.valor_liquidado || 0);
                        const liquidValue = Number(empenho.valor_liquido ?? (empenhado - cancelado));
                        const saldoLine = Number(empenho.valor_saldo ?? (liquidValue - liquidado));
                        
                        return (
                            <TableRow key={empenho.id} className="hover:bg-muted/50 border-b last:border-0">
                                <TableCell className="font-medium pl-6">{empenho.numero}</TableCell>
                                <TableCell className="text-muted-foreground">
                                    {empenho.data_empenho ? format(new Date(empenho.data_empenho), "dd/MM/yyyy") : "-"}
                                </TableCell>
                                <TableCell className="text-right font-mono text-[10px]">
                                    {currencyFormatter.format(empenhado)}
                                </TableCell>
                                <TableCell className="text-right font-mono text-[10px] text-red-500">
                                    {currencyFormatter.format(cancelado)}
                                </TableCell>
                                <TableCell className="text-right font-mono text-[10px] text-blue-600 font-semibold">
                                    {currencyFormatter.format(liquidValue)}
                                </TableCell>
                                <TableCell className="text-right font-mono text-[10px] text-emerald-600">
                                    {currencyFormatter.format(liquidado)}
                                </TableCell>
                                <TableCell className="text-right font-mono text-[10px] text-amber-600 pr-6 font-semibold">
                                    {currencyFormatter.format(saldoLine)}
                                </TableCell>
                            </TableRow>
                        );
                    })}
                </TableBody>
            </Table>
        );
    }

    return (
        <div className="space-y-4">
            {groupKeys.map((groupKey) => {
                const groupEmpenhos = grouped[groupKey];
                const totalValue = groupEmpenhos.reduce((sum, e) => sum + Number(e.valor || 0), 0);
                const totalNet = groupEmpenhos.reduce((sum, e) => {
                    const liq = Number(e.valor_liquido);
                    return sum + (!isNaN(liq) ? liq : (Number(e.valor || 0) - Number(e.valor_cancelado || 0)));
                }, 0);
                const totalLiquidated = groupEmpenhos.reduce((sum, e) => sum + Number(e.valor_liquidado || 0), 0);
                const saldo = totalNet - totalLiquidated;
                
                // Find latest date
                const dates = groupEmpenhos
                    .map(e => e.data_empenho ? new Date(e.data_empenho).getTime() : 0)
                    .filter(d => d > 0);
                const lastDate = dates.length > 0 ? new Date(Math.max(...dates)) : null;

                const isExpanded = expandedGroups[groupKey];

                return (
                    <Card key={groupKey} className="overflow-hidden border-l-4 border-l-primary/50 shadow-sm transition-all hover:shadow-md">
                        <div 
                            className="cursor-pointer select-none"
                            onClick={() => toggleGroup(groupKey)}
                        >
                            <CardHeader className="p-4 sm:p-6">
                                <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                                    <div className="flex items-center gap-3">
                                        <div className="p-2 rounded-full bg-primary/10 text-primary">
                                            <Briefcase className="h-5 w-5" />
                                        </div>
                                        <div>
                                            <CardTitle className="text-lg">
                                                {groupKey === "Empenhos Diretos" ? groupKey : `Contrato: ${groupKey}`}
                                            </CardTitle>
                                            <CardDescription className="flex items-center gap-2 mt-1">
                                                <Badge variant="secondary" className="font-normal">
                                                    {groupEmpenhos.length} empenho(s)
                                                </Badge>
                                            </CardDescription>
                                        </div>
                                    </div>

                                    <div className="flex flex-wrap items-center gap-x-6 gap-y-2 text-sm">
                                        <div className="flex flex-col">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold">Empenhado</span>
                                            <span className="font-bold text-primary text-base">
                                                {currencyFormatter.format(totalValue)}
                                            </span>
                                        </div>

                                        <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold text-blue-600">Líquido</span>
                                            <span className="font-bold text-blue-600 text-base">
                                                {currencyFormatter.format(totalNet)}
                                            </span>
                                        </div>

                                        <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold text-emerald-600">Liquidado</span>
                                            <span className="font-bold text-emerald-600 text-base">
                                                {currencyFormatter.format(totalLiquidated)}
                                            </span>
                                        </div>

                                        <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold text-amber-600">Saldo</span>
                                            <span className="font-bold text-amber-600 text-base">
                                                {currencyFormatter.format(saldo)}
                                            </span>
                                        </div>
                                        
                                        {lastDate && (
                                            <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                                <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold">Último Empenho</span>
                                                <span className="font-medium text-muted-foreground flex items-center gap-1.5 mt-0.5">
                                                    <Calendar className="h-3.5 w-3.5" />
                                                    {format(lastDate, "dd/MM/yyyy")}
                                                </span>
                                            </div>
                                        )}

                                        <div className="flex items-center ml-auto px-2">
                                            {isExpanded ? <ChevronDown className="h-5 w-5 text-muted-foreground" /> : <ChevronRight className="h-5 w-5 text-muted-foreground" />}
                                        </div>
                                    </div>
                                </div>
                            </CardHeader>
                        </div>

                        {isExpanded && (
                            <CardContent className="p-0 border-t bg-muted/20">
                                <Table>
                                    <TableHeader className="bg-muted/30">
                                        <TableRow>
                                            <TableHead className="pl-6">Número Empenho</TableHead>
                                            <TableHead>Data</TableHead>
                                            <TableHead className="text-right">Empenhado</TableHead>
                                            <TableHead className="text-right">Cancelado</TableHead>
                                            <TableHead className="text-right">Líquido</TableHead>
                                            <TableHead className="text-right">Liquidado</TableHead>
                                            <TableHead className="text-right pr-6">Saldo</TableHead>
                                        </TableRow>
                                    </TableHeader>
                                    <TableBody>
                                        {groupEmpenhos.sort((a,b) => {
                                            const da = a.data_empenho ? new Date(a.data_empenho).getTime() : 0;
                                            const db = b.data_empenho ? new Date(b.data_empenho).getTime() : 0;
                                            return db - da; // Multi-descending by date
                                        }).map((empenho) => {
                                            const empenhado = Number(empenho.valor || 0);
                                            const cancelado = Number(empenho.valor_cancelado || 0);
                                            const liquidado = Number(empenho.valor_liquidado || 0);
                                            const liquidValue = Number(empenho.valor_liquido ?? (empenhado - cancelado));
                                            const saldoLine = Number(empenho.valor_saldo ?? (liquidValue - liquidado));
                                            
                                            return (
                                                <TableRow key={empenho.id} className="hover:bg-muted/50 border-b last:border-0">
                                                    <TableCell className="font-medium pl-6">{empenho.numero}</TableCell>
                                                    <TableCell className="text-muted-foreground">
                                                        {empenho.data_empenho ? format(new Date(empenho.data_empenho), "dd/MM/yyyy") : "-"}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px]">
                                                        {currencyFormatter.format(empenhado)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-red-500">
                                                        {currencyFormatter.format(cancelado)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-blue-600 font-semibold">
                                                        {currencyFormatter.format(liquidValue)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-emerald-600">
                                                        {currencyFormatter.format(liquidado)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-amber-600 pr-6 font-semibold">
                                                        {currencyFormatter.format(saldoLine)}
                                                    </TableCell>
                                                </TableRow>
                                            );
                                        })}
                                    </TableBody>
                                </Table>
                            </CardContent>
                        )}
                    </Card>
                );
            })}
        </div>
    )
}
