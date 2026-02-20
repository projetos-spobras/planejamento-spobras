
"use client"

import { useState } from "react"
import { PlanejamentoFase } from "@/types"
import { GanttChart } from "./gantt-chart"
import { FasesTable } from "./fases-table"
import { Button } from "@/components/ui/button"
import { PlanejamentoDialog } from "@/app/(dashboard)/planejamento/_components/planejamento-dialog"
import { PlusIcon } from "lucide-react"
import { PlanejamentoFaseFormValues } from "@/lib/validations"
import { createPlanejamento, updatePlanejamentoBatch } from "@/app/(dashboard)/planejamento/actions"
import { usePlanningCascade } from "@/hooks/use-planning-cascade"

interface PlanningTabContentProps {
    empreendimentoId: string
    empreendimentoNome: string
    fases: PlanejamentoFase[]
    avancoFisico?: number  // 0–100
}

export function PlanningTabContent({ empreendimentoId, empreendimentoNome, fases, avancoFisico }: PlanningTabContentProps) {
    const [isDialogOpen, setIsDialogOpen] = useState(false)
    const [selectedFase, setSelectedFase] = useState<PlanejamentoFase | null>(null)
    const { recalculateDates } = usePlanningCascade()

    const handleNew = () => {
        setSelectedFase(null)
        setIsDialogOpen(true)
    }

    const handleEdit = (fase: PlanejamentoFase) => {
        setSelectedFase(fase)
        setIsDialogOpen(true)
    }

    const handleSave = async (data: PlanejamentoFaseFormValues, id?: string) => {
        if (!id) {
            return await createPlanejamento(data)
        }

        const newStart = data.data_inicio || null
        const newEnd = data.data_fim || null
        const updates = recalculateDates(fases, id, newStart, newEnd)

        if (updates.length > 1) {
            const confirmed = window.confirm(`Esta alteração impactará ${updates.length - 1} fases subsequentes. Deseja aplicar o recálculo em cascata?`)
            if (!confirmed) {
                return { success: false, error: "Cancelado pelo usuário" }
            }
        }

        const batchPayload = updates.map(u => {
            if (u.id === id) {
                return { ...u, ...data, data_inicio: u.data_inicio, data_fim: u.data_fim, updated_at: new Date().toISOString() }
            } else {
                const original = fases.find(f => f.id === u.id)
                if (!original) return u
                return { ...original, data_inicio: u.data_inicio, data_fim: u.data_fim, updated_at: new Date().toISOString() }
            }
        })

        return await updatePlanejamentoBatch(batchPayload as any, empreendimentoId)
    }

    return (
        <div className="space-y-4">
            <div className="flex justify-between items-center">
                <h3 className="text-lg font-medium">Cronograma Físico-Financeiro</h3>
                <Button onClick={handleNew}>
                    <PlusIcon className="mr-2 h-4 w-4" />
                    Nova Fase
                </Button>
            </div>

            <div className="grid gap-4 md:grid-cols-3">
                <div className="border rounded p-4 bg-white shadow-sm">
                    <div className="text-sm text-gray-500">Total Planejado (Receita)</div>
                    <div className="text-2xl font-bold text-green-600">
                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(
                            fases.filter(f => f.tipo_fase === 'receita').reduce((acc, cur) => acc + (Number(cur.valor_planejado) || 0), 0)
                        )}
                    </div>
                </div>
                <div className="border rounded p-4 bg-white shadow-sm">
                    <div className="text-sm text-gray-500">Total Planejado (Despesa)</div>
                    <div className="text-2xl font-bold text-red-600">
                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(
                            fases.filter(f => f.tipo_fase === 'despesa').reduce((acc, cur) => acc + (Number(cur.valor_planejado) || 0), 0)
                        )}
                    </div>
                </div>
                <div className="border rounded p-4 bg-white shadow-sm">
                    <div className="text-sm text-gray-500">Saldo Planejado</div>
                    <div className="text-2xl font-bold text-blue-600">
                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(
                            fases.reduce((acc, cur) => {
                                if (cur.tipo_fase === 'receita') return acc + (Number(cur.valor_planejado) || 0)
                                if (cur.tipo_fase === 'despesa') return acc - (Number(cur.valor_planejado) || 0)
                                return acc
                            }, 0)
                        )}
                    </div>
                </div>
            </div>

            {/* [P1] Tabela de fases com coluna Predecessora */}
            <FasesTable fases={fases} onEditFase={handleEdit} />

            {/* [P2] Gantt com barra de avanço real sobreposta */}
            <GanttChart fases={fases} onEditFase={handleEdit} avancoFisico={avancoFisico} />

            <PlanejamentoDialog
                open={isDialogOpen}
                onOpenChange={setIsDialogOpen}
                empreendimentos={[{ id: empreendimentoId, nome: empreendimentoNome }]}
                planejamentoToEdit={selectedFase}
                otherFases={fases}
                onSave={handleSave}
            />
        </div>
    )
}
