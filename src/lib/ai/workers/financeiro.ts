import { SupabaseClient } from '@supabase/supabase-js'
import { getContractEmpenhos, getContractMedicoes } from '@/lib/api-client'

export interface ContratoFinanceiro {
  contrato: any
  empenhos: any[]
  medicoes: any[]
}

export interface ResumoFinanceiro {
  empreendimento_id: string
  total_contratado: number
  total_aditado: number
  total_medido: number
  total_empenhado: number
  total_liquidado: number
  total_cancelado: number
  saldo_disponivel: number
  percentual_medido: number
  percentual_liquidado: number
  por_contrato: ContratoFinanceiro[]
  formatado: {
    total_contratado: string
    total_medido: string
    total_empenhado: string
    total_liquidado: string
    saldo_disponivel: string
  }
}

export async function fetchResumoFinanceiro(
  supabase: SupabaseClient,
  idEmpreendimento: string
): Promise<ResumoFinanceiro> {
  // 1. Buscar contratos do empreendimento no Supabase
  const { data: empreendimentoContratos, error } = await supabase
    .from('empreendimento_contratos')
    .select('*, contratos(*)')
    .eq('empreendimento_id', idEmpreendimento)

  const contratosLista = empreendimentoContratos && !error 
    ? empreendimentoContratos.map(ec => ec.contratos).filter(Boolean) 
    : []

  // Limitar arrays de contratos a 20 por empreendimento no Promise.all para evitar sobrecarga
  const contratosLimitados = contratosLista.slice(0, 20)

  // 2. Para cada contrato, buscar empenhos e medições em PARALELO:
  const resultados = await Promise.all(
    contratosLimitados.map(async (contrato: any) => {
      // Se não tiver o original_id, não consegue buscar na API legada
      if (!contrato.original_id && !contrato._originalId) {
        return { contrato, empenhos: [], medicoes: [] }
      }
      const originalId = contrato.original_id || contrato._originalId
      
      const [empenhos, medicoes] = await Promise.all([
        getContractEmpenhos(supabase, originalId).catch(() => []),
        getContractMedicoes(supabase, originalId).catch(() => [])
      ])
      return { contrato, empenhos, medicoes }
    })
  )

  // 3. Consolidar resultados
  const resumo: ResumoFinanceiro = {
    empreendimento_id: idEmpreendimento,
    total_contratado: 0,
    total_aditado: 0,
    total_medido: 0,
    total_empenhado: 0,
    total_liquidado: 0,
    total_cancelado: 0,
    saldo_disponivel: 0,
    percentual_medido: 0,
    percentual_liquidado: 0,
    por_contrato: resultados,
    formatado: {
      total_contratado: 'R$ 0,00',
      total_medido: 'R$ 0,00',
      total_empenhado: 'R$ 0,00',
      total_liquidado: 'R$ 0,00',
      saldo_disponivel: 'R$ 0,00'
    }
  }

  resultados.forEach(({ contrato, empenhos, medicoes }) => {
    resumo.total_contratado += contrato.valor_total || 0
    // O total aditado idealmente vem do contrato também, mas por simplicidade ignorado se não existir

    empenhos.forEach(e => {
      resumo.total_empenhado += e.valor_liquido || 0
      resumo.total_liquidado += e.valor_liquidado || 0
      resumo.total_cancelado += e.valor_cancelado || 0
    })

    medicoes.forEach(m => {
      resumo.total_medido += m.valor_total || 0
    })
  })

  resumo.saldo_disponivel = resumo.total_empenhado - resumo.total_liquidado
  
  if (resumo.total_contratado > 0) {
    resumo.percentual_medido = (resumo.total_medido / resumo.total_contratado) * 100
  }
  
  if (resumo.total_empenhado > 0) {
    resumo.percentual_liquidado = (resumo.total_liquidado / resumo.total_empenhado) * 100
  }

  // 4. Formatar valores em BRL
  const formatBRL = (valor: number) => 
    new Intl.NumberFormat('pt-BR', { 
      style: 'currency', currency: 'BRL' 
    }).format(valor)

  resumo.formatado = {
    total_contratado: formatBRL(resumo.total_contratado),
    total_medido: formatBRL(resumo.total_medido),
    total_empenhado: formatBRL(resumo.total_empenhado),
    total_liquidado: formatBRL(resumo.total_liquidado),
    saldo_disponivel: formatBRL(resumo.saldo_disponivel)
  }

  return resumo
}
