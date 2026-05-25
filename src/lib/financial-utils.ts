/** Pure helper: returns 0–100 progress percent between start and end relative to today */
function getProgressPercent(start: string, end: string): number {
    const startTime = new Date(start).getTime()
    const endTime = new Date(end).getTime()
    if (endTime <= startTime) return 0
    const now = Date.now()
    if (now < startTime) return 0
    if (now >= endTime) return 100
    return ((now - startTime) / (endTime - startTime)) * 100
}

/**
 * Calculate physical progress (0–100) for a single "Execução de Obras" service.
 * Mirrors getServicoProgressInfo in client-page.tsx but as a pure function.
 * Uses peso_percentual from fases to weight each phase's timeline progress.
 */
export function calcServicoFisicoProgress(servico: any): number {
    const fases: any[] = servico.fases ?? []
    if (servico.tipo === 'Execução de Obras' && fases.length > 0) {
        let totalPercent = 0
        for (const fase of fases) {
            const peso = Number(fase.peso_percentual ?? 0)
            if (peso > 0 && fase.data_inicio && fase.data_fim) {
                const prog = getProgressPercent(fase.data_inicio, fase.data_fim)
                totalPercent += prog * (peso / 100)
            }
        }
        return Math.min(100, totalPercent)
    }
    // Fallback: service-level dates
    if (servico.data_inicio && servico.data_fim) {
        return getProgressPercent(servico.data_inicio, servico.data_fim)
    }
    if (servico.data_inicio && servico.duracao_dias) {
        const start = new Date(servico.data_inicio).getTime()
        const end = start + Number(servico.duracao_dias) * 86400000
        return getProgressPercent(servico.data_inicio, new Date(end).toISOString())
    }
    return 0
}

/**
 * Given a list of services, compute the overall physical advance (0–100)
 * as a simple average of progress across "Execução de Obras" services that have planning.
 * Returns: { percentual, totalPlanejadoObras }
 */
export function calculateAvancoFisico(
    servicos: any[],
    valorTotalContratos: number
): { percentual: number; totalPlanejadoObras: number } {
    const obras = servicos.filter(s => s.tipo === 'Execução de Obras')
    if (obras.length === 0) return { percentual: 0, totalPlanejadoObras: 0 }

    const totalPlanejadoObras = obras.reduce((acc, s) => {
        const distribTotal = (s.distribuicao_financeira ?? []).reduce((a: number, d: any) => a + Number(d.valor ?? 0), 0)
        const faseTotal = (s.fases ?? []).reduce((a: number, f: any) => a + Number(f.valor_planejado ?? 0), 0)
        return acc + distribTotal + faseTotal + (distribTotal === 0 && faseTotal === 0 ? Number(s.valor_total ?? 0) : 0)
    }, 0)

    const progresses = obras.map(s => calcServicoFisicoProgress(s))
    const avg = progresses.reduce((a, b) => a + b, 0) / progresses.length

    return { percentual: Math.min(100, avg), totalPlanejadoObras }
}

export type FinancialIndicators = {
    valorTotal: number
    totalEmpenhado: number
    percentualExecucao: number
    valorPlanejadoAno: number       // Sum of all planned values from distribuicao_financeira for current year
    valorPlanejadoObrasAno: number  // Sum of planned values for "Execução de Obras" services, current year
    totalEmpenhadoAno: number
    saldoPlanejado: number          // (Planned - Empenhado)
    valorPlanejadoTotal: number     // Sum of all planned values across all time
}

/**
 * Calculate financial KPIs for an empreendimento.
 *
 * @param valorTotal - total value from empreendimento
 * @param empenhos - empenhos list
 * @param servicos - services list, each with an optional `distribuicao_financeira` array
 *                   and `tipo` field to distinguish Execução de Obras
 */
export function calculateFinancialIndicators(
    valorTotal: number,
    empenhos: any[],
    servicos: any[]
): FinancialIndicators {
    const currentYear = new Date().getFullYear()

    const totalEmpenhado = empenhos.reduce((acc, e) => acc + Number(e.valor), 0)

    // Percentual Execução (Empenhado / Total Empreendimento)
    const percentualExecucao = valorTotal > 0 ? (totalEmpenhado / valorTotal) * 100 : 0

    // Sum distribuicao_financeira entries whose month/year falls in current year
    let valorPlanejadoAno = 0
    let valorPlanejadoObrasAno = 0

    for (const servico of servicos) {
        const distribuicoes: any[] = servico.distribuicao_financeira || []
        const isObras = servico.tipo === 'Execução de Obras'

        const getValAno = (d: any) => {
            if (d.ano !== null && d.ano !== undefined && d.ano !== '') {
                const numAno = Number(d.ano)
                if (!isNaN(numAno)) return numAno
            }
            if (d.mes_referencia) {
                const date = new Date(d.mes_referencia)
                const y = date.getFullYear()
                if (!isNaN(y)) return y
            }
            return null
        }

        for (const d of distribuicoes) {
            // distribuicao_financeira rows have: mes (1-12), ano (yyyy), valor
            const dAno = getValAno(d)
            if (dAno === currentYear) {
                const val = Number(d.valor ?? 0)
                valorPlanejadoAno += val
                if (isObras) valorPlanejadoObrasAno += val
            }
        }

        // Also consider servico.valor_total as planned if no distribuicao but has data within year
        if (distribuicoes.length === 0 && servico.valor_total) {
            const getYearSafe = (dateStr: any) => {
                if (!dateStr) return null
                const y = new Date(dateStr).getFullYear()
                return isNaN(y) ? null : y
            }
            const startYear = getYearSafe(servico.data_inicio)
            const endYear = getYearSafe(servico.data_fim)
            if (startYear === currentYear || endYear === currentYear) {
                valorPlanejadoAno += Number(servico.valor_total)
                if (isObras) valorPlanejadoObrasAno += Number(servico.valor_total)
            }
        }
    }

    const empenhadoAno = empenhos
        .filter(e => {
            if (e.data_empenho) {
                const year = new Date(e.data_empenho).getFullYear()
                return year === currentYear
            }
            return false
        })
        .reduce((acc, e) => acc + Number(e.valor || 0), 0)

    // Calculate valorPlanejadoTotal
    let valorPlanejadoTotal = 0
    for (const servico of servicos) {
        const distribuicoes: any[] = servico.distribuicao_financeira || []
        const distSum = distribuicoes.reduce((acc, d) => acc + Number(d.valor || 0), 0)
        
        if (distSum > 0) {
            valorPlanejadoTotal += distSum
        } else if (servico.valor_total) {
            valorPlanejadoTotal += Number(servico.valor_total)
        }
    }

    return {
        valorTotal,
        totalEmpenhado,
        percentualExecucao: valorTotal > 0 ? (totalEmpenhado / valorTotal) * 100 : 0,
        valorPlanejadoAno,
        valorPlanejadoObrasAno,
        totalEmpenhadoAno: empenhadoAno,
        saldoPlanejado: valorPlanejadoAno - empenhadoAno,
        valorPlanejadoTotal
    }
}

/**
 * Calcula o percentual medido (0–100) baseado na soma das medições (P0 + Reajuste)
 * em relação à soma dos contratos (Original + Aditamentos).
 */
export function calcularPercentualMedido(
    medicoes: any[],
    contratos: any[]
): number {
    if (!medicoes?.length || !contratos?.length) return 0

    const totalMedido = medicoes.reduce((acc, m) => {
        // Campos reais da API: valor_p0 e valor_reajuste
        return acc + (Number(m.valor_p0) || 0) + (Number(m.valor_reajuste) || 0)
    }, 0)

    const totalContratado = contratos.reduce((acc, cv) => {
        // Campos reais da API: valor_original e valor_aditamento
        const c = cv.contrato
        return acc + (Number(c?.valor_original) || 0) + (Number(c?.valor_aditamento) || 0)
    }, 0)

    if (totalContratado <= 0) return 0

    const percentual = (totalMedido / totalContratado) * 100
    return Math.min(Math.round(percentual * 10) / 10, 100)
}
