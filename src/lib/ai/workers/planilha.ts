import * as XLSX from 'xlsx'
import { SupabaseClient } from '@supabase/supabase-js'

export interface PlanilhaParseResult {
  sucesso: boolean
  erro?: string
  abas: string[]
  abaUsada: string
  totalLinhas: number
  colunas: string[]
  dados: Record<string, unknown>[]
  preview: Record<string, unknown>[]
}

export interface MapeamentoColunas {
  confianca: 'alta' | 'media' | 'baixa'
  mapeamento: {
    nome_fase?: string
    valor?: string
    data_inicio?: string
    data_fim?: string
    percentual?: string
    status?: string
    observacao?: string
  }
  colunas_ignoradas: string[]
}

export interface FaseImportacao {
  nome: string
  valor: number
  data_inicio: string | null
  data_fim: string | null
  percentual_executado: number
  status: string
  observacao: string | null
  linha_origem: number
}

export interface PlanoImportacao {
  empreendimento_id: string
  fases: FaseImportacao[]
  total_valor: number
  total_fases: number
  avisos: string[]
  erros: string[]
}

export interface GravacaoResult {
  sucesso: boolean
  fases_gravadas: number
  fases_ignoradas: number
  fases_com_erro: number
  total_valor_importado: number
  mensagem: string
}

/**
 * PARTE A — Parsing do arquivo
 */
export function parsePlanilha(buffer: Buffer, mimeType: string): PlanilhaParseResult {
  try {
    const workbook = XLSX.read(buffer, { type: 'buffer', cellDates: true })
    if (!workbook.SheetNames.length) throw new Error('O arquivo não possui abas.')

    // Selecionar a aba com mais linhas preenchidas
    let melhorLinhas = -1
    const abaUsada = workbook.SheetNames.reduce((melhor, aba) => {
      const sheet = workbook.Sheets[aba]
      const range = XLSX.utils.decode_range(sheet['!ref'] ?? 'A1:A1')
      const linhas = range.e.r - range.s.r
      if (linhas > melhorLinhas) {
        melhorLinhas = linhas
        return aba
      }
      return melhor
    }, workbook.SheetNames[0])

    const sheet = workbook.Sheets[abaUsada]
    const dados = XLSX.utils.sheet_to_json<Record<string, unknown>>(sheet, { defval: null, raw: false })

    if (dados.length === 0) throw new Error('A aba selecionada está vazia.')
    if (dados.length > 500) throw new Error('Planilha muito grande. Máximo 500 linhas por importação.')

    const colunas = Object.keys(dados[0])

    return {
      sucesso: true,
      abas: workbook.SheetNames,
      abaUsada,
      totalLinhas: dados.length,
      colunas,
      dados,
      preview: dados.slice(0, 3)
    }
  } catch (err: any) {
    return {
      sucesso: false,
      erro: err.message || 'Erro desconhecido ao processar planilha.',
      abas: [],
      abaUsada: '',
      totalLinhas: 0,
      colunas: [],
      dados: [],
      preview: []
    }
  }
}

/**
 * PARTE B — Mapeamento inteligente de colunas
 */
export function mapearColunasPlanejamento(colunas: string[]): MapeamentoColunas {
  const mapeamento: MapeamentoColunas['mapeamento'] = {}
  const colunas_ignoradas: string[] = []

  const normalize = (s: string) => s.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "")

  const keywords = {
    nome_fase: ['fase', 'etapa', 'atividade', 'servico', 'descricao', 'item', 'nome', 'tarefa'],
    valor: ['valor', 'custo', 'preco', 'orcamento', 'vl_', 'vlr', 'r$', 'reais', 'financeiro', 'investimento'],
    data_inicio: ['inicio', 'start', 'comeco', 'dt_inicio', 'data_inicio', 'previsto_inicio'],
    data_fim: ['fim', 'termino', 'conclusao', 'end', 'dt_fim', 'data_fim', 'previsto_fim', 'prazo'],
    percentual: ['%', 'percent', 'progresso', 'avanco', 'execucao', 'realizado'],
    status: ['status', 'situacao', 'estado'],
    observacao: ['observacao', 'obs', 'comentario', 'nota']
  }

  colunas.forEach(col => {
    const norm = normalize(col)
    let mapeado = false

    for (const [key, list] of Object.entries(keywords)) {
      if (list.some(k => norm.includes(k)) && !mapeamento[key as keyof typeof mapeamento]) {
        mapeamento[key as keyof typeof mapeamento] = col
        mapeado = true
        break
      }
    }

    if (!mapeado) colunas_ignoradas.push(col)
  })

  // Calcular confiança
  let confianca: MapeamentoColunas['confianca'] = 'baixa'
  if (mapeamento.nome_fase && mapeamento.valor && (mapeamento.data_inicio || mapeamento.data_fim)) {
    confianca = 'alta'
  } else if (mapeamento.nome_fase && mapeamento.valor) {
    confianca = 'media'
  }

  return { confianca, mapeamento, colunas_ignoradas }
}

/**
 * PARTE C — Conversão para modelo do sistema
 */
export function converterParaPlanejamento(
  dados: Record<string, unknown>[],
  mapeamento: MapeamentoColunas,
  idEmpreendimento: string
): PlanoImportacao {
  const fases: FaseImportacao[] = []
  const avisos: string[] = []
  const erros: string[] = []
  let total_valor = 0

  const limparValor = (v: unknown): number => {
    if (v === null || v === undefined) return 0
    if (typeof v === 'number') return v
    const str = String(v)
      .replace(/[R$\s]/g, '')
      .replace(/\./g, '')
      .replace(',', '.')
    return Number(str) || 0
  }

  const limparData = (v: unknown): string | null => {
    if (!v) return null
    if (v instanceof Date) return v.toISOString().split('T')[0]
    
    const str = String(v).trim()
    // Tentar ISO simples (YYYY-MM-DD)
    if (/^\d{4}-\d{2}-\d{2}$/.test(str)) return str
    
    // Tentar DD/MM/YYYY
    const matchDMY = str.match(/^(\d{2})\/(\d{2})\/(\d{4})$/)
    if (matchDMY) return `${matchDMY[3]}-${matchDMY[2]}-${matchDMY[1]}`
    
    // Tentar MM/YYYY
    const matchMY = str.match(/^(\d{2})\/(\d{4})$/)
    if (matchMY) return `${matchMY[2]}-${matchMY[1]}-01`

    return null
  }

  dados.forEach((linha, index) => {
    const nomeRaw = linha[mapeamento.mapeamento.nome_fase || '']
    if (!nomeRaw) return // Pular se nome estiver vazio

    const valor = limparValor(linha[mapeamento.mapeamento.valor || ''])
    const data_inicio = limparData(linha[mapeamento.mapeamento.data_inicio || ''])
    const data_fim = limparData(linha[mapeamento.mapeamento.data_fim || ''])
    
    let percentual = 0
    const percRaw = linha[mapeamento.mapeamento.percentual || '']
    if (percRaw) {
      percentual = typeof percRaw === 'number' ? percRaw : parseFloat(String(percRaw).replace('%', '')) || 0
      if (percentual > 100) {
        avisos.push(`Linha ${index + 2}: Percentual > 100% (${percentual}%). Ajustado para 100%.`)
        percentual = 100
      }
    }

    if (valor === 0) avisos.push(`Linha ${index + 2}: Valor da fase "${nomeRaw}" está zerado.`)
    if (mapeamento.mapeamento.data_inicio && !data_inicio) avisos.push(`Linha ${index + 2}: Data de início inválida ou vazia.`)

    fases.push({
      nome: String(nomeRaw),
      valor,
      data_inicio,
      data_fim,
      percentual_executado: percentual,
      status: String(linha[mapeamento.mapeamento.status || ''] || 'Pendente'),
      observacao: String(linha[mapeamento.mapeamento.observacao || ''] || ''),
      linha_origem: index + 2
    })

    total_valor += valor
  })

  return {
    empreendimento_id: idEmpreendimento,
    fases,
    total_valor,
    total_fases: fases.length,
    avisos,
    erros
  }
}

/**
 * GRAVAÇÃO NO BANCO
 */
export async function gravarPlanejamento(
  supabase: SupabaseClient,
  userId: string,
  plano: PlanoImportacao
): Promise<GravacaoResult> {
  let gravadas = 0
  let ignoradas = 0
  let comErro = 0
  let totalValor = 0

  const formatBRL = (valor: number) => 
    new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(valor)

  for (const fase of plano.fases) {
    try {
      // 1. Verificar se a fase já existe no sistema globalmente (opcional, aqui buscaremos se já existe no empreendimento)
      const { data: faseExistente } = await supabase
        .from('planejamento_fases')
        .select('id')
        .ilike('nome', fase.nome)
        .limit(1)
        .maybeSingle()

      let faseId = faseExistente?.id

      if (!faseId) {
        const { data: novaFase, error: errFase } = await supabase
          .from('planejamento_fases')
          .insert({ nome: fase.nome })
          .select('id')
          .single()
        
        if (errFase) throw errFase
        faseId = novaFase.id
      }

      // 2. Criar vínculo no empreendimento_fases
      // Verificar se o vínculo já existe para evitar duplicidade
      const { data: vinculoExistente } = await supabase
        .from('empreendimento_fases')
        .select('id')
        .eq('empreendimento_id', plano.empreendimento_id)
        .eq('fase_id', faseId)
        .maybeSingle()

      if (vinculoExistente) {
        ignoradas++
        continue
      }

      const { error: errVinculo } = await supabase
        .from('empreendimento_fases')
        .insert({
          empreendimento_id: plano.empreendimento_id,
          fase_id: faseId,
          valor_previsto: fase.valor,
          data_inicio_prevista: fase.data_inicio,
          data_fim_prevista: fase.data_fim,
          status: fase.status
        })

      if (errVinculo) throw errVinculo

      // 3. Criar serviço genérico associado se houver valor
      if (fase.valor > 0) {
        await supabase.from('servicos').insert({
          empreendimento_id: plano.empreendimento_id,
          nome: `Serviço: ${fase.nome}`,
          valor_estimado: fase.valor,
          status: fase.status
        })
      }

      gravadas++
      totalValor += fase.valor
    } catch (err) {
      console.error(`Erro ao gravar fase ${fase.nome}:`, err)
      comErro++
    }
  }

  // Registrar log em tb_anotacoes_empreendimento
  await supabase.from('tb_anotacoes_empreendimento').insert({
    empreendimento_id: plano.empreendimento_id,
    user_id: userId,
    tipo: 'Observação',
    texto: `Importação de planilha realizada pelo Sid: 
      ${gravadas} fases importadas, 
      ${ignoradas} duplicatas ignoradas,
      total de ${formatBRL(totalValor)}. 
      Data: ${new Date().toLocaleDateString('pt-BR')}`
  })

  return {
    sucesso: true,
    fases_gravadas: gravadas,
    fases_ignoradas: ignoradas,
    fases_com_erro: comErro,
    total_valor_importado: totalValor,
    mensagem: `Importação finalizada com sucesso! Foram gravadas ${gravadas} novas fases (Total: ${formatBRL(totalValor)}). ${ignoradas > 0 ? `${ignoradas} fases já existiam e foram puladas.` : ''}`
  }
}
