import { FunctionDeclaration, SchemaType } from '@google/generative-ai'
import { SupabaseClient } from '@supabase/supabase-js'
import { z } from 'zod'
import * as apiClient from '@/lib/api-client'
import { buscarEmpreendimentos, fetchEmpreendimentoCompleto } from './workers/empreendimentos'
import { fetchResumoFinanceiro } from './workers/financeiro'
import { parsePlanilha, mapearColunasPlanejamento, converterParaPlanejamento, gravarPlanejamento } from './workers/planilha'

/**
 * PARTE A: Definições de Tools para o Gemini
 */

// Tool 1: buscar_empreendimentos
const buscarEmpreendimentosDef: FunctionDeclaration = {
  name: 'buscar_empreendimentos',
  description: 'Busca empreendimentos no sistema com filtros opcionais',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      busca: { type: SchemaType.STRING, description: 'Texto para buscar no nome ou código' },
      status: { type: SchemaType.STRING, description: 'Filtrar por status (ID da fase)' },
      programa: { type: SchemaType.STRING, description: 'Filtrar por ID do programa' },
      limite: { type: SchemaType.NUMBER, description: 'Máximo de resultados (padrão 10, máximo 50)' },
    }
  }
}

// Tool 2: get_detalhes_empreendimento
const getDetalhesEmpreendimentoDef: FunctionDeclaration = {
  name: 'get_detalhes_empreendimento',
  description: 'Obtém informações completas de um empreendimento específico',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_empreendimento: { type: SchemaType.STRING, description: 'UUID ou código do empreendimento' },
    },
    required: ['id_empreendimento']
  }
}

// Tool 3: buscar_contratos
const buscarContratosDef: FunctionDeclaration = {
  name: 'buscar_contratos',
  description: 'Lista contratos vinculados a um empreendimento',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_empreendimento: { type: SchemaType.STRING, description: 'ID do empreendimento' },
    },
    required: ['id_empreendimento']
  }
}

// Tool 4: buscar_empenhos
const buscarEmpenhosDef: FunctionDeclaration = {
  name: 'buscar_empenhos',
  description: 'Busca empenhos financeiros de um contrato com totais consolidados',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_contrato: { type: SchemaType.STRING, description: 'ID do contrato' },
      ano: { type: SchemaType.NUMBER, description: 'Filtrar por ano do empenho' },
    },
    required: ['id_contrato']
  }
}

// Tool 5: buscar_medicoes
const buscarMedicoesDef: FunctionDeclaration = {
  name: 'buscar_medicoes',
  description: 'Recupera histórico de medições de um contrato ou empreendimento',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_contrato: { type: SchemaType.STRING, description: 'ID do contrato' },
      id_empreendimento: { type: SchemaType.STRING, description: 'Filtrar por empreendimento específico' },
    },
    required: ['id_contrato']
  }
}

// Tool 6: resumo_financeiro
const resumoFinanceiroDef: FunctionDeclaration = {
  name: 'resumo_financeiro',
  description: 'Gera resumo financeiro consolidado de um empreendimento: total contratado, medido, empenhado, liquidado e saldo',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_empreendimento: { type: SchemaType.STRING, description: 'ID do empreendimento' },
    },
    required: ['id_empreendimento']
  }
}

// Tool 7: registrar_anotacao
const registrarAnotacaoDef: FunctionDeclaration = {
  name: 'registrar_anotacao',
  description: 'Registra uma anotação ou observação oficial em um empreendimento',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_empreendimento: { type: SchemaType.STRING, description: 'ID do empreendimento' },
      texto: { type: SchemaType.STRING, description: 'Conteúdo da anotação (mínimo 10 caracteres)' },
      tipo: { type: SchemaType.STRING, description: 'Categoria', enum: ['Alerta', 'Observação', 'Pendência'] },
    },
    required: ['id_empreendimento', 'texto']
  }
}

// Tool 8: interpretar_planilha
const interpretarPlanilhaDef: FunctionDeclaration = {
  name: 'interpretar_planilha',
  description: 'Analisa uma planilha de planejamento enviada pelo usuário e prepara os dados para importação em um empreendimento. Sempre apresenta um resumo e aguarda confirmação antes de gravar.',
  parameters: {
    type: SchemaType.OBJECT,
    properties: {
      id_empreendimento: { type: SchemaType.STRING, description: 'ID do empreendimento' },
      confirmar_importacao: { type: SchemaType.BOOLEAN, description: 'Se true, executa a gravação. Se false, apenas analisa.' },
    },
    required: ['id_empreendimento']
  }
}

// Listas de Tools por Perfil
export const TOOLS_ANALISTA: FunctionDeclaration[] = [
  buscarEmpreendimentosDef,
  getDetalhesEmpreendimentoDef,
  buscarContratosDef,
  buscarEmpenhosDef,
  buscarMedicoesDef,
  resumoFinanceiroDef
]

export const TOOLS_GESTOR_ADMIN: FunctionDeclaration[] = [
  ...TOOLS_ANALISTA,
  registrarAnotacaoDef,
  interpretarPlanilhaDef
]

/**
 * PARTE B: Executores das Tools
 */

export interface ToolContext {
  supabase: SupabaseClient
  userId: string
  nivelAcesso: string
}

const formatterBRL = new Intl.NumberFormat('pt-BR', {
  style: 'currency',
  currency: 'BRL',
})

export const TOOL_EXECUTORS: Record<string, (params: any, ctx: ToolContext) => Promise<any>> = {
  
  buscar_empreendimentos: async (params, ctx) => {
    const schema = z.object({
      busca: z.string().optional(),
      status: z.string().optional(),
      programa: z.string().optional(),
      limite: z.number().max(50).default(10)
    })
    
    const filtros = schema.parse(params)
    return buscarEmpreendimentos(ctx.supabase, filtros)
  },

  get_detalhes_empreendimento: async (params, ctx) => {
    const { id_empreendimento } = z.object({ id_empreendimento: z.string() }).parse(params)
    const data = await fetchEmpreendimentoCompleto(ctx.supabase, id_empreendimento)
    
    if (!data.dadosBase) return { erro: 'Empreendimento não encontrado' }
    
    return data
  },

  buscar_contratos: async (params, ctx) => {
    const { id_empreendimento } = z.object({ id_empreendimento: z.string() }).parse(params)
    
    const [contratos, links] = await Promise.all([
      apiClient.getContratos(ctx.supabase),
      apiClient.getContratoEmpreendimentos(ctx.supabase)
    ])

    const empLinks = links.filter(l => l.empreendimento_id === id_empreendimento)
    const result = empLinks.map(link => {
      const c = contratos.find(contrato => contrato.id === link.contrato_id)
      return c ? {
        id: c.id,
        numero: c.numero,
        objeto: c.objeto,
        contratada: c.contratada,
        valor_total: c.valor_total,
        status: c.status
      } : null
    }).filter(Boolean)

    return result.slice(0, 50)
  },

  buscar_empenhos: async (params, ctx) => {
    const { id_contrato, ano } = z.object({ 
      id_contrato: z.string(), 
      ano: z.number().optional() 
    }).parse(params)
    
    // Para buscar empenhos de um contrato, precisamos do _originalId da API legada
    const contratos = await apiClient.getContratos(ctx.supabase)
    const c = contratos.find(item => item.id === id_contrato)
    if (!c || !c._originalId) return { erro: 'Contrato não encontrado ou sem vínculo legado' }

    const empenhos = await apiClient.getContractEmpenhos(ctx.supabase, c._originalId)
    let filtered = empenhos
    if (ano) {
      filtered = empenhos.filter(e => e.data_empenho?.startsWith(ano.toString()))
    }

    return filtered.slice(0, 50).map(e => ({
      numero: e.numero,
      valor: e.valor,
      valor_liquidado: e.valor_liquidado,
      data: e.data_empenho,
      saldo: e.valor_saldo
    }))
  },

  buscar_medicoes: async (params, ctx) => {
    const { id_contrato } = z.object({ id_contrato: z.string() }).parse(params)
    
    const contratos = await apiClient.getContratos(ctx.supabase)
    const c = contratos.find(item => item.id === id_contrato)
    if (!c || !c._originalId) return { erro: 'Contrato não encontrado' }

    const medicoes = await apiClient.getContractMedicoes(ctx.supabase, c._originalId)
    return medicoes.slice(0, 50).map(m => ({
      numero: m.numero,
      valor_total: m.valor_total,
      data_fim: m.data_fim,
      empreendimento: m.nmEmpreendimento
    }))
  },

  resumo_financeiro: async (params, ctx) => {
    const { id_empreendimento } = z.object({ id_empreendimento: z.string() }).parse(params)
    
    const resumo = await fetchResumoFinanceiro(ctx.supabase, id_empreendimento)
    
    // Opcionalmente podemos retornar apenas o formatado se o Sid só precisa dos dados formatados, 
    // mas retornar o objeto completo dá mais flexibilidade para o LLM.
    return resumo
  },

  registrar_anotacao: async (params, ctx) => {
    const schema = z.object({
      id_empreendimento: z.string().uuid(),
      texto: z.string().min(10),
      tipo: z.enum(['Alerta', 'Observação', 'Pendência']).default('Observação')
    })

    if (ctx.nivelAcesso === 'Analista') {
      return { erro: 'Seu perfil de Analista não possui permissão para registrar anotações.' }
    }

    const data = schema.parse(params)
    
    const { data: inserted, error } = await ctx.supabase
      .from('tb_anotacoes_empreendimento')
      .insert({
        empreendimento_id: data.id_empreendimento,
        user_id: ctx.userId,
        texto: data.texto,
        tipo: data.tipo
      })
      .select()
      .single()

    if (error) {
      console.error('[registrar_anotacao]', error)
      return { erro: 'Falha ao registrar anotação no banco de dados.' }
    }

    return { 
      sucesso: true, 
      id: inserted.id, 
      mensagem: 'Anotação registrada com sucesso.' 
    }
  },

  interpretar_planilha: async (params, ctx) => {
    // Verificar nível de acesso
    if (ctx.nivelAcesso === 'Analista') {
      return { erro: 'Analistas não têm permissão para importar planilhas.' }
    }

    const buffer = (ctx as any).arquivoBuffer
    const mimeType = (ctx as any).arquivoMimeType
    
    if (!buffer) {
      return { 
        erro: 'Nenhuma planilha foi enviada. Anexe um arquivo XLSX ou CSV.' 
      }
    }

    // Fase 1: Parsing
    const parseResult = parsePlanilha(buffer, mimeType)
    if (!parseResult.sucesso) {
      return { erro: parseResult.erro }
    }

    // Fase 2: Mapeamento
    const mapeamento = mapearColunasPlanejamento(parseResult.colunas)

    // Fase 3: Conversão
    const plano = converterParaPlanejamento(
      parseResult.dados,
      mapeamento,
      params.id_empreendimento as string
    )

    // Se apenas análise (sem confirmação):
    if (!params.confirmar_importacao) {
      return {
        status: 'aguardando_confirmacao',
        resumo: {
          total_fases: plano.total_fases,
          total_valor: new Intl.NumberFormat('pt-BR', {
            style: 'currency', currency: 'BRL'
          }).format(plano.total_valor),
          confianca_mapeamento: mapeamento.confianca,
          colunas_mapeadas: Object.entries(mapeamento.mapeamento)
            .filter(([, v]) => v)
            .map(([k, v]) => `${k} → "${v}"`)
            .join(', '),
          colunas_ignoradas: mapeamento.colunas_ignoradas,
          avisos: plano.avisos,
          erros: plano.erros,
          preview: plano.fases.slice(0, 3).map(f => ({
            nome: f.nome,
            valor: new Intl.NumberFormat('pt-BR', {
              style: 'currency', currency: 'BRL'
            }).format(f.valor),
            periodo: f.data_inicio && f.data_fim 
              ? `${f.data_inicio} a ${f.data_fim}` 
              : 'Sem data definida'
          }))
        },
        instrucao: 'Para confirmar a importação, responda "confirmar importação" ou "sim".'
      }
    }

    // Se confirmado: gravar no banco
    return await gravarPlanejamento(ctx.supabase, ctx.userId, plano)
  }
}

