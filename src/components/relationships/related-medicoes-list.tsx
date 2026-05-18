"use client"

import { format } from "date-fns"
import { ptBR } from "date-fns/locale"
import { ChevronDown, ChevronRight, Calendar, DollarSign, Briefcase, Ruler } from "lucide-react"
import React, { useState } from "react"

import {
    Card,
    CardContent,
    CardHeader,
    CardTitle,
    CardDescription
} from "@/components/ui/card"
import { Badge } from "@/components/ui/badge"

import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table"

export interface RelatedMedicao {
    id: string
    _originalId?: number
    numero: string
    valor_p0: number
    valor_reajuste: number
    valor_gerenciamento: number
    valor_repasse: number
    valor_total: number
    data_inicio: string | null
    data_fim: string | null
    idContrato: number | string
    idEmpreendimento: number | string
    contrato_numero?: string | null
    empreendimento_nome?: string | null
    nmEmpreendimento?: string | null
}

interface RelatedMedicoesListProps {
    medicoes: RelatedMedicao[]
    entityType: "Empreendimento" | "Contrato" | "Lote"
}

export function RelatedMedicoesList({ medicoes, entityType }: RelatedMedicoesListProps) {
    const [expandedGroups, setExpandedGroups] = useState<Record<string, boolean>>({});

    const toggleGroup = (group: string) => {
        setExpandedGroups(prev => ({ ...prev, [group]: !prev[group] }));
    };

    if (medicoes.length === 0) {
        return (
            <div className="text-center py-8 text-muted-foreground border rounded-md">
                Nenhuma medição localizada para este {entityType}.
            </div>
        )
    }

    // Group medicoes by number for Lotes, or by contract/empreendimento for others
    const grouped = medicoes.reduce((acc, med) => {
        let key = "";
        if (entityType === "Lote") {
            key = med.numero || "Sem Número";
        } else if (entityType === "Contrato") {
            key = med.empreendimento_nome || med.idEmpreendimento?.toString() || "Empreendimento Desconhecido";
        } else {
            key = med.contrato_numero || "Medições Diretas";
        }
        
        if (!acc[key]) acc[key] = [];
        acc[key].push(med);
        return acc;
    }, {} as Record<string, RelatedMedicao[]>);

    const groupKeys = Object.keys(grouped).sort((a, b) => {
        // Try to sort numerically if possible
        const numA = parseInt(a.replace(/\D/g, ''));
        const numB = parseInt(b.replace(/\D/g, ''));
        if (!isNaN(numA) && !isNaN(numB)) return numB - numA;
        return b.localeCompare(a);
    });

    const currencyFormatter = new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' });

    return (
        <div className="space-y-4">
            {groupKeys.map((groupKey) => {
                const groupMedicoes = grouped[groupKey];
                const totalP0 = groupMedicoes.reduce((sum, m) => sum + m.valor_p0, 0);
                const totalReajuste = groupMedicoes.reduce((sum, m) => sum + m.valor_reajuste, 0);
                const totalGeral = groupMedicoes.reduce((sum, m) => sum + m.valor_total, 0);
                
                // Find latest date
                const dates = groupMedicoes
                    .map(m => m.data_fim ? new Date(m.data_fim).getTime() : 0)
                    .filter(d => d > 0);
                const lastDate = dates.length > 0 ? new Date(Math.max(...dates)) : null;

                const isExpanded = expandedGroups[groupKey];

                return (
                    <Card key={groupKey} className="overflow-hidden border-l-4 border-l-emerald-500 shadow-sm transition-all hover:shadow-md">
                        <div 
                            className="cursor-pointer select-none"
                            onClick={() => toggleGroup(groupKey)}
                        >
                            <CardHeader className="p-4 sm:p-6">
                                <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                                    <div className="flex items-center gap-3">
                                        <div className="p-2 rounded-full bg-emerald-100 text-emerald-600">
                                            <Calendar className="h-5 w-5" />
                                        </div>
                                        <div>
                                            <CardTitle className="text-lg">
                                                {entityType === "Lote" 
                                                    ? `Medição ${groupKey}` 
                                                    : (entityType === "Contrato" ? `Obra: ${groupKey}` : `Contrato: ${groupKey}`)}
                                            </CardTitle>
                                            <CardDescription className="flex items-center gap-2 mt-1">
                                                <Badge variant="secondary" className="font-normal bg-emerald-50 text-emerald-700 border-emerald-100">
                                                    {groupMedicoes.length} item(ns) nesta medição
                                                </Badge>
                                            </CardDescription>
                                        </div>
                                    </div>

                                    <div className="flex flex-wrap items-center gap-x-6 gap-y-2 text-sm">
                                        <div className="flex flex-col">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold">Medido P0</span>
                                            <span className="font-bold text-foreground text-base">
                                                {currencyFormatter.format(totalP0)}
                                            </span>
                                        </div>

                                        <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold text-blue-600">Reajuste (R)</span>
                                            <span className="font-bold text-blue-600 text-base">
                                                {currencyFormatter.format(totalReajuste)}
                                            </span>
                                        </div>

                                        <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                            <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold text-emerald-600">Total Medido</span>
                                            <span className="font-bold text-emerald-600 text-base">
                                                {currencyFormatter.format(totalGeral)}
                                            </span>
                                        </div>
                                        
                                        {lastDate && (
                                            <div className="flex flex-col border-l pl-4 sm:border-l sm:pl-6">
                                                <span className="text-muted-foreground text-[10px] uppercase tracking-wider font-semibold">Fim da Última Medição</span>
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
                                            <TableHead className="pl-6">
                                                {entityType === "Lote" ? "Empreendimento" : "Nº Medição"}
                                            </TableHead>
                                            <TableHead>Período</TableHead>
                                            <TableHead className="text-right">Medido P0</TableHead>
                                            <TableHead className="text-right">Reajuste</TableHead>
                                            <TableHead className="text-right">Gerenciamento</TableHead>
                                            <TableHead className="text-right">Repasse</TableHead>
                                            <TableHead className="text-right pr-6">Total</TableHead>
                                        </TableRow>
                                    </TableHeader>
                                    <TableBody>
                                        {groupMedicoes.sort((a,b) => {
                                            const da = a.data_fim ? new Date(a.data_fim).getTime() : 0;
                                            const db = b.data_fim ? new Date(b.data_fim).getTime() : 0;
                                            return db - da; 
                                        }).map((med) => {
                                            return (
                                                <TableRow key={med.id} className="hover:bg-muted/50 border-b last:border-0">
                                                    <TableCell className="font-medium pl-6">
                                                        {entityType === "Lote" 
                                                            ? (med.empreendimento_nome || `Obra ${med.idEmpreendimento}`)
                                                            : med.numero}
                                                    </TableCell>
                                                    <TableCell className="text-muted-foreground text-xs">
                                                        {med.data_inicio && med.data_fim 
                                                            ? `${format(new Date(med.data_inicio), "dd/MM/yy")} - ${format(new Date(med.data_fim), "dd/MM/yy")}`
                                                            : med.data_fim ? format(new Date(med.data_fim), "dd/MM/yyyy") : "-"}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px]">
                                                        {currencyFormatter.format(med.valor_p0)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-blue-600">
                                                        {currencyFormatter.format(med.valor_reajuste)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px]">
                                                        {currencyFormatter.format(med.valor_gerenciamento)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px]">
                                                        {currencyFormatter.format(med.valor_repasse)}
                                                    </TableCell>
                                                    <TableCell className="text-right font-mono text-[10px] text-emerald-600 pr-6 font-semibold">
                                                        {currencyFormatter.format(med.valor_total)}
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
