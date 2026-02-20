
import { addDays, differenceInDays, isBefore, isValid, parseISO } from "date-fns"
import { PlanejamentoFase } from "@/types"

export type PlanningUpdate = {
    id: string
    data_inicio: string | null
    data_fim: string | null
}

export function usePlanningCascade() {

    const recalculateDates = (
        allFases: PlanejamentoFase[],
        changedFaseId: string,
        newStart: Date | null,
        newEnd: Date | null
    ): PlanningUpdate[] => {
        if (!newStart || !newEnd) return []

        const updates: PlanningUpdate[] = []
        const faseMap = new Map(allFases.map(f => [f.id, f]))
        const dependantsMap = new Map<string, string[]>() // Pred -> [Dependants]

        // Build dependency graph
        allFases.forEach(f => {
            if (f.fase_predecessora_id) {
                const list = dependantsMap.get(f.fase_predecessora_id) || []
                list.push(f.id)
                dependantsMap.set(f.fase_predecessora_id, list)
            }
        })

        // Helper to process valid date strings
        const getDate = (d: string | null) => (d ? new Date(d) : null)

        // Queue for BFS
        const queue: string[] = [changedFaseId]
        const visited = new Set<string>()

        // Update the changed node first in our temporary state map
        const currentState = new Map<string, { start: Date; end: Date }>()

        // Initialize current state with existing valid dates
        allFases.forEach(f => {
            const s = getDate(f.data_inicio)
            const e = getDate(f.data_fim)
            if (s && e) currentState.set(f.id, { start: s, end: e })
        })

        // Apply change
        currentState.set(changedFaseId, { start: newStart, end: newEnd })
        updates.push({ id: changedFaseId, data_inicio: newStart.toISOString(), data_fim: newEnd.toISOString() })

        while (queue.length > 0) {
            const currentId = queue.shift()!
            if (visited.has(currentId)) continue // Minimal circular check
            visited.add(currentId)

            const current = currentState.get(currentId)
            if (!current) continue

            const children = dependantsMap.get(currentId) || []

            for (const childId of children) {
                const childOriginal = faseMap.get(childId)
                if (!childOriginal) continue

                // Calculate duration to maintain it
                const childOldStart = getDate(childOriginal.data_inicio)
                const childOldEnd = getDate(childOriginal.data_fim)

                let duration = 0
                if (childOldStart && childOldEnd) {
                    duration = differenceInDays(childOldEnd, childOldStart)
                }
                if (duration < 0) duration = 0

                // New Start = Pred End + 1 + Gap
                const gap = childOriginal.dias_folga || 0
                const nextStart = addDays(current.end, 1 + gap)
                const nextEnd = addDays(nextStart, duration)

                currentState.set(childId, { start: nextStart, end: nextEnd })
                updates.push({
                    id: childId,
                    data_inicio: nextStart.toISOString(),
                    data_fim: nextEnd.toISOString()
                })

                queue.push(childId)
            }
        }

        return updates
    }

    return { recalculateDates }
}
