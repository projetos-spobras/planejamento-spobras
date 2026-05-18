
"use client"

import { useState } from "react"
import { PlanejamentoFase } from "@/types"
import { PlanejamentoClient } from "@/app/(dashboard)/planejamento/_components/client-page"
import { usePlanningCascade } from "@/hooks/use-planning-cascade"
import { Servico } from "@/types"

interface PlanningTabContentProps {
    empreendimentoId: string
    empreendimentoNome: string
    fases: PlanejamentoFase[]
    servicos: Servico[]
    avancoFisico?: number  // 0–100
    valorTotalContratos?: number
    valorPlanejadoTotal?: number
}

export function PlanningTabContent({ 
    empreendimentoId, 
    empreendimentoNome, 
    fases, 
    servicos, 
    avancoFisico, 
    valorTotalContratos = 0,
    valorPlanejadoTotal = 0
}: PlanningTabContentProps) {
    const servicosComFases = servicos.map(s => ({
        ...s,
        empreendimento_nome: empreendimentoNome,
        fases: fases.filter(f => f.servico_id === s.id)
    }))

    const kpiTotalContratado = valorTotalContratos;
    const kpiAContratar = servicos
        .filter(s => !s.contrato_id)
        .reduce((sum, s) => sum + (Number(s.valor_total) || 0), 0);
    const kpiValorEstimado = kpiTotalContratado + kpiAContratar;

    // Granular calculations for Card 4 breakdown
    const valorContratosPlanejados = servicos
        .filter(s => !!s.contrato_id)
        .reduce((acc, s) => {
            const planejado = s.distribuicao_financeira?.reduce((sum, d) => sum + Number(d.valor || 0), 0) || 0
            return acc + planejado
        }, 0);
    
    const valorContratosSemPlano = Math.max(0, kpiTotalContratado - valorContratosPlanejados);

    const valorEstimadosSemPlano = servicos
        .filter(s => !s.contrato_id)
        .reduce((acc, s) => {
            const planejado = s.distribuicao_financeira?.reduce((sum, d) => sum + Number(d.valor || 0), 0) || 0
            return acc + (Number(s.valor_total || 0) - planejado)
        }, 0);

    const qtdContratosSemPlano = servicos.filter(s => {
        if (!s.contrato_id) return false
        const temDist = s.distribuicao_financeira && s.distribuicao_financeira.length > 0
        const temFases = s.fases && s.fases.some((f: any) => Number(f.valor_planejado || 0) > 0)
        return !temDist && !temFases
    }).length

    return (
        <div className="space-y-4">
            <PlanejamentoClient
                servicos={servicosComFases}
                empreendimentos={[{ id: empreendimentoId, nome: empreendimentoNome }]}
                hideEmpreendimento={true}
                kpiTotalContratadoGlobal={kpiTotalContratado}
                kpiValorEstimadoGlobal={kpiValorEstimado}
                kpiAContratarGlobal={kpiAContratar}
                kpiTotalPlanejadoGlobal={valorPlanejadoTotal}
                contratosPlanejadosValorGlobal={valorContratosPlanejados}
                contratosSemPlanoValorGlobal={valorContratosSemPlano}
                estimadosSemPlanoValorGlobal={valorEstimadosSemPlano}
                contratosAPlanejarCountGlobal={qtdContratosSemPlano}
            />
        </div>
    )
}
