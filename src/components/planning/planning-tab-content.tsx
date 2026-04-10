
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
}

export function PlanningTabContent({ empreendimentoId, empreendimentoNome, fases, servicos, avancoFisico, valorTotalContratos = 0 }: PlanningTabContentProps) {
    const servicosComFases = servicos.map(s => ({
        ...s,
        empreendimento_nome: empreendimentoNome,
        fases: fases.filter(f => f.servico_id === s.id)
    }))

    const valorTotalPlanejado = servicosComFases.reduce((acc, servico) => {
        const distribuido = servico.distribuicao_financeira?.reduce((sum, d) => sum + Number(d.valor), 0) || 0;
        const fasesSoma = servico.fases?.reduce((sum: number, f: PlanejamentoFase) => sum + Number(f.valor_planejado || 0), 0) || 0;
        return acc + distribuido + fasesSoma;
    }, 0);

    const valorAPlanejar = valorTotalContratos - valorTotalPlanejado;

    return (
        <div className="space-y-4">
            <PlanejamentoClient
                servicos={servicosComFases}
                empreendimentos={[{ id: empreendimentoId, nome: empreendimentoNome }]}
                hideEmpreendimento={true}
            />
        </div>
    )
}
