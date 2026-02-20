export type FinancialIndicators = {
    valorTotal: number
    totalEmpenhado: number
    percentualExecucao: number
    valorPlanejadoAno: number
    totalEmpenhadoAno: number
    saldoPlanejado: number // (Planned - Empenhado)
}

export function calculateFinancialIndicators(
    valorTotal: number,
    empenhos: any[],
    planejamento: any[]
): FinancialIndicators {
    const currentYear = new Date().getFullYear()

    const totalEmpenhado = empenhos.reduce((acc, e) => acc + Number(e.valor), 0)

    // Percentual Execução (Empenhado / Total Empreendimento)
    const percentualExecucao = valorTotal > 0 ? (totalEmpenhado / valorTotal) * 100 : 0

    // Planejamento do Ano
    // Assuming 'data_inicio' or 'data_fim' in planejamento phases determines the year, or checking if it falls in current year.
    // Ideally phases have a year. If not, we might need to assume all active phases are relevant or filter by date.
    // For now, let's sum all execution phases that have dates in current year or no date (backlog).
    // Better: Filter by date_inicio/data_fim overlapping current year.

    const planejadoAno = planejamento
        .filter(p => {
            // If no date, assume it's planned for "future" or "now". Let's include for now or define rule.
            // Rule: If has start date in current year.
            if (p.data_inicio) {
                const year = new Date(p.data_inicio).getFullYear()
                return year === currentYear
            }
            return false
        })
        .reduce((acc, p) => acc + Number(p.valor_planejado), 0)

    const empenhadoAno = empenhos
        .filter(e => {
            if (e.data_empenho) {
                const year = new Date(e.data_empenho).getFullYear()
                return year === currentYear
            }
            return false
        })
        .reduce((acc, e) => acc + Number(e.valor), 0)

    return {
        valorTotal,
        totalEmpenhado,
        percentualExecucao,
        valorPlanejadoAno: planejadoAno,
        totalEmpenhadoAno: empenhadoAno,
        saldoPlanejado: planejadoAno - empenhadoAno
    }
}
