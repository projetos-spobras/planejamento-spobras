import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'
import { z } from 'zod'
import { getGeminiModel, validateFileForGemini } from '@/lib/ai/gemini'
import { buildSystemPrompt } from '@/lib/ai/prompts'
import { TOOLS_ANALISTA, TOOLS_GESTOR_ADMIN, TOOL_EXECUTORS } from '@/lib/ai/tools'
import { salvarMensagem, buscarHistorico, criarOuBuscarConversa, atualizarTituloConversa } from '@/lib/ai/history'
import { AgentRequest, AgentResponse } from '@/types/ai'
import { Part } from '@google/generative-ai'

export const runtime = 'nodejs'
export const maxDuration = 30

// BLOCO 1 — Rate Limiting (in-memory)
// O Map é declarado no escopo do módulo para persistir entre requisições
const rateLimitMap = new Map<string, { count: number; resetAt: number }>()
const RATE_LIMIT_MAX = 20
const RATE_LIMIT_WINDOW_MS = 60 * 1000 // 1 minuto

export async function POST(request: Request) {
  let conversaIdFinal: string | null = null

  try {
    // BLOCO 2 — Autenticação e perfil do usuário
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    
    if (authError || !user) {
      return NextResponse.json({ erro: 'Não autorizado' }, { status: 401 })
    }

    // Rate Limiting (agora temos o userId)
    const now = Date.now()
    const userRateLimit = rateLimitMap.get(user.id)

    if (userRateLimit) {
      if (now > userRateLimit.resetAt) {
        // Reseta se passou da janela de tempo
        rateLimitMap.set(user.id, { count: 1, resetAt: now + RATE_LIMIT_WINDOW_MS })
      } else {
        userRateLimit.count++
        if (userRateLimit.count > RATE_LIMIT_MAX) {
          return NextResponse.json(
            { erro: 'Limite de requisições atingido. Aguarde 1 minuto.' },
            { status: 429 }
          )
        }
      }
    } else {
      rateLimitMap.set(user.id, { count: 1, resetAt: now + RATE_LIMIT_WINDOW_MS })
    }

    // Buscar perfil
    const { data: perfil } = await supabase
      .from('tb_perfis')
      .select('nivel_acesso, nome')
      .eq('id', user.id)
      .single()
    
    const nivelAcesso = perfil?.nivel_acesso ?? 'Analista'
    const nomeUsuario = perfil?.nome ?? user.email ?? 'Usuário'

    // BLOCO 3 — Parse e validação do body
    const contentType = request.headers.get('content-type') ?? ''
    
    let mensagemStr = ''
    let historicoStr = '[]'
    let contextoStr = '{}'
    let conversaIdIn: string | null = null
    let arquivoFile: File | null = null

    if (contentType.includes('multipart/form-data')) {
      const formData = await request.formData()
      mensagemStr = formData.get('mensagem') as string
      historicoStr = (formData.get('historico') as string) || '[]'
      contextoStr = (formData.get('contexto') as string) || '{}'
      conversaIdIn = formData.get('conversaId') as string | null
      arquivoFile = formData.get('arquivo') as File | null
    } else {
      const body: AgentRequest = await request.json()
      mensagemStr = body.mensagem
      historicoStr = JSON.stringify(body.historico || [])
      contextoStr = JSON.stringify(body.contexto || {})
      conversaIdIn = body.conversaId || null
    }

    // Validação Zod
    const schema = z.object({
      mensagem: z.string().min(1).max(2000),
      historico: z.array(z.any()).max(40),
      contexto: z.record(z.any()).optional()
    })

    const historicoParsed = JSON.parse(historicoStr)
    const contextoParsed = JSON.parse(contextoStr)

    const validatedBody = schema.parse({
      mensagem: mensagemStr,
      historico: historicoParsed,
      contexto: contextoParsed
    })

    if (arquivoFile) {
      const validacaoArquivo = validateFileForGemini(arquivoFile)
      if (!validacaoArquivo.valid) {
        return NextResponse.json({ erro: validacaoArquivo.error }, { status: 400 })
      }
    }

    // BLOCO 4 — Gerenciar conversa no Supabase
    const { conversaId: idGerado, isNova } = await criarOuBuscarConversa(
      supabase,
      user.id,
      validatedBody.contexto?.empreendimentoId
    )
    conversaIdFinal = conversaIdIn ?? idGerado

    // Salvar mensagem do usuário
    await salvarMensagem(supabase, conversaIdFinal, 'user', validatedBody.mensagem, {
      fileAnalyzed: arquivoFile ? { name: arquivoFile.name, type: arquivoFile.type } : undefined
    })

    if (isNova) {
      // Atualiza título em background
      atualizarTituloConversa(supabase, conversaIdFinal, validatedBody.mensagem).catch(console.error)
    }

    // BLOCO 5 — Preparar chamada ao Gemini
    const tools = nivelAcesso === 'Analista' ? TOOLS_ANALISTA : TOOLS_GESTOR_ADMIN

    const systemPrompt = buildSystemPrompt({
      userName: nomeUsuario,
      userEmail: user.email!,
      nivelAcesso: nivelAcesso as 'Admin' | 'Gestor' | 'Analista',
      dataAtual: new Date().toLocaleDateString('pt-BR', { 
        weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' 
      }),
      contextoEmpreendimento: validatedBody.contexto?.empreendimentoId
    })

    const historicoGemini = validatedBody.historico.length > 0
      ? validatedBody.historico
      : await buscarHistorico(supabase, conversaIdFinal)

    const parts: Part[] = [{ text: validatedBody.mensagem }]
    
    let arquivoBuffer: Buffer | undefined = undefined
    if (arquivoFile) {
      const arrayBuffer = await arquivoFile.arrayBuffer()
      arquivoBuffer = Buffer.from(arrayBuffer)
      const base64 = arquivoBuffer.toString('base64')
      parts.push({
        inlineData: { mimeType: arquivoFile.type, data: base64 }
      })
    }

    // BLOCO 6 — Executar Gemini com Function Calling
    const model = getGeminiModel()
    const chat = model.startChat({
      history: historicoGemini,
      systemInstruction: {
        role: 'system',
        parts: [{ text: systemPrompt }]
      },
      tools: [{ functionDeclarations: tools }]
    })

    let resultado = await chat.sendMessage(parts)
    let toolsUtilizadas: string[] = []
    let iteracoes = 0

    // Loop de Function Calling (máximo 5 iterações)
    while (iteracoes < 5) {
      iteracoes++
      const response = resultado.response
      const functionCalls = response.functionCalls()
      
      if (!functionCalls || functionCalls.length === 0) break
      
      const toolResults = []
      for (const call of functionCalls) {
        toolsUtilizadas.push(call.name)
        
        const executor = TOOL_EXECUTORS[call.name]
        if (!executor) {
          toolResults.push({
            functionResponse: {
              name: call.name,
              response: { erro: `Tool '${call.name}' não encontrada` }
            }
          })
          continue
        }
        
        try {
          const toolCtx = { 
            supabase, 
            userId: user.id, 
            nivelAcesso,
            arquivoBuffer,
            arquivoMimeType: arquivoFile?.type
          }
          const toolResult = await executor(call.args, toolCtx)
          toolResults.push({
            functionResponse: { name: call.name, response: toolResult }
          })
          
          await salvarMensagem(supabase, conversaIdFinal, 'tool', 
            JSON.stringify({ tool: call.name, resultado: toolResult }),
            { toolName: call.name, toolResult }
          )
        } catch (err) {
          console.error(`[AI-AGENT] Erro na tool ${call.name}:`, err)
          toolResults.push({
            functionResponse: {
              name: call.name,
              response: { erro: 'Erro ao buscar dados. Tente novamente.' }
            }
          })
        }
      }
      
      resultado = await chat.sendMessage(toolResults)
    }

    // BLOCO 7 — Extrair e salvar resposta final
    const respostaFinal = resultado.response.text()

    if (!respostaFinal || respostaFinal.trim() === '') {
      return NextResponse.json({
        erro: 'O assistente não gerou uma resposta. Tente reformular sua pergunta.'
      }, { status: 500 })
    }

    await salvarMensagem(supabase, conversaIdFinal, 'assistant', respostaFinal, {
      toolName: toolsUtilizadas.length > 0 ? toolsUtilizadas.join(', ') : undefined
    })

    return NextResponse.json({
      resposta: respostaFinal,
      conversaId: conversaIdFinal,
      toolsUtilizadas: toolsUtilizadas.length > 0 ? toolsUtilizadas : undefined
    } satisfies AgentResponse)

  } catch (err) {
    const mensagemErro = err instanceof Error ? err.message : String(err)
    
    // Tratamento específico para erros da API Gemini
    if (mensagemErro.includes('429') || mensagemErro.includes('quota')) {
      console.error('[AI-AGENT] Quota da API Gemini atingida:', mensagemErro)
      return NextResponse.json({
        erro: 'O assistente está temporariamente indisponível. ' +
              'Limite de requisições atingido. Tente novamente em alguns minutos.',
        conversaId: conversaIdFinal ?? null
      }, { status: 503 })  // 503 Service Unavailable
    }
    
    if (mensagemErro.includes('API_KEY') || mensagemErro.includes('403')) {
      console.error('[AI-AGENT] Chave de API inválida ou revogada')
      return NextResponse.json({
        erro: 'Configuração do assistente inválida. Contate o administrador.',
        conversaId: conversaIdFinal ?? null
      }, { status: 503 })
    }
    
    console.error('[AI-AGENT] Erro não tratado:', err)
    return NextResponse.json({
      erro: 'Erro interno do assistente. Nossa equipe foi notificada.',
      conversaId: conversaIdFinal ?? null
    }, { status: 500 })
  }
}
