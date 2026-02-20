
"use client"

import { useState } from "react"
import { PlanejamentoFase } from "@/types"
import { GanttChart } from "./gantt-chart"
import { Button } from "@/components/ui/button"
import { PlanejamentoDialog } from "@/app/(dashboard)/planejamento/_components/planejamento-dialog"
import { PlusIcon } from "lucide-react"
import { PlanejamentoFaseFormValues } from "@/lib/validations"
import { createPlanejamento, updatePlanejamentoBatch } from "@/app/(dashboard)/planejamento/actions"
import { usePlanningCascade } from "@/hooks/use-planning-cascade"
import { toast } from "sonner"

interface PlanningTabContentProps {
    empreendimentoId: string
    empreendimentoNome: string
    fases: PlanejamentoFase[]
}

export function PlanningTabContent({ empreendimentoId, empreendimentoNome, fases }: PlanningTabContentProps) {
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
            // Creation (Cascade not implemented on creation yet, usually simple append)
            return await createPlanejamento(data)
        }

        // Update with Cascade Logic
        const newStart = data.data_inicio || null
        const newEnd = data.data_fim || null

        // 1. Calculate cascading updates
        const updates = recalculateDates(fases, id, newStart, newEnd)

        // Add non-date updates for the main edited item (value, name, etc)
        // Note: recalculateDates only returns ID + Dates. We need to merge the full data for the primary item.
        // But `updatePlanejamentoBatch` in its current simple form ONLY updates dates if I use the type from the hook.
        // I need to be careful. The `updatePlanejamentoBatch` action accepts {id, data_inicio, data_fim}.
        // But `data` contains name, value etc.

        // Strategy: 
        // 1. Separate the primary update (full fields) from cascade updates (dates only).
        // Actually, `updatePlanejamentoBatch` uses `upsert`. I should allow it to take partial updates.
        // But Supabase `upsert` needs all required fields if it was an insert, but for update it's fine.
        // However, I constructed `updatePlanejamentoBatch` to take specific `{id, start, end}`.

        // Let's refine the logic:
        // The primary item needs ALL fields updated.
        // The dependent items need ONLY dates updated.

        // The `updates` array from hook contains the primary item too.

        if (updates.length > 1) {
            const confirmed = window.confirm(`Esta alteração impactará ${updates.length - 1} fases subsequentes. Deseja aplicar o recálculo em cascata?`)
            if (!confirmed) {
                // Return success false to stop dialog closing? Or just abort?
                return { success: false, error: "Cancelado pelo usuário" }
            }
        }

        // Prepare the payload
        // We need to merge the `data` (form values) into the primary update
        const batchPayload = updates.map(u => {
            if (u.id === id) {
                return {
                    ...u,
                    ...data, // This overrides start/end with the same values, but adds other fields
                    data_inicio: u.data_inicio, // Ensure ISO strings from hook are used (or Date from data? Hook uses ISO)
                    data_fim: u.data_fim,
                    updated_at: new Date().toISOString()
                }
            } else {
                // For others, we only have dates. We need to preserve other fields?
                // `upsert` in Supabase: if I only provide ID and Dates, will it erase other fields? NO, if I use `update`.
                // BUT `upsert` behaves like insert if ID not found. Here ID exists.
                // However, `upsert` REPLACES the row if I don't be careful? No, standard SQL merge.
                // Supabase `upsert` expects a complete row usually? verify.
                // Actually `upsert` acts like REPLACE in many contexts.
                // `update` is safer for partials. But `update` doesn't support batch with different values easily.

                // My action uses `upsert`. This is risky if I don't provide all fields.
                // If I upsert {id: 1, date: '...'}, and column `name` is not nullable, it might fail or set to default?
                // No, existing row -> update. If I omit `name`, does it keep existing?
                // Postgres `ON CONFLICT DO UPDATE SET ...`. Supabase handles this.
                // Usually `upsert` requires all columns if it might Insert.

                // Let's assume for now that `upsert` might be problematic for partial updates if not fully specified.
                // Safest approach: Fetch the original item from `fases`, merge with new dates.
                const original = fases.find(f => f.id === u.id)
                if (!original) return u // should not happen
                return {
                    ...original,
                    data_inicio: u.data_inicio,
                    data_fim: u.data_fim,
                    updated_at: new Date().toISOString()
                }
            }
        })

        // But wait, `data` (from form) has `undefined` for omitted optional fields in zod schema?
        // zod resolver returns default values?
        // I need to be careful with `undefined` vs `null`.
        // `updatePlanejamentoBatch` needs to be flexible.

        // Actually, `updatePlanejamentoBatch` takes `any[]` effectively because I cast it in this logic.
        // Let's rely on the Action to handle it.
        // Using `upsert` might require cleaner payloads.

        // To be safe, I'm constructing full objects using `fases` prop.
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
                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(fases.filter(f => f.tipo_fase === 'receita').reduce((acc, cur) => acc + (Number(cur.valor_planejado) || 0), 0))}
                    </div>
                </div>
                <div className="border rounded p-4 bg-white shadow-sm">
                    <div className="text-sm text-gray-500">Total Planejado (Despesa)</div>
                    <div className="text-2xl font-bold text-red-600">
                        {new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(fases.filter(f => f.tipo_fase === 'despesa').reduce((acc, cur) => acc + (Number(cur.valor_planejado) || 0), 0))}
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

            <GanttChart fases={fases} onEditFase={handleEdit} />

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
