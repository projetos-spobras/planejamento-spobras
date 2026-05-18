'use client'

import { useState, useCallback, useEffect } from 'react'
import { ChatMensagem, AgentRequest, AgentResponse } from '@/types/ai'
import { generateUUID } from '@/lib/utils'


interface UseAgentChatProps {
  contexto?: {
    empreendimentoId?: string
    contratoId?: string
  }
}

/**
 * Hook para gerenciar o estado e a comunicação com o Agente de IA.
 */
export function useAgentChat({ contexto }: UseAgentChatProps = {}) {
  const [messages, setMessages] = useState<ChatMensagem[]>([])
  const [isLoading, setIsLoading] = useState(false)
  const [sessionId, setSessionId] = useState('')
  const [conversaId, setConversaId] = useState<string | null>(null)
  const [erro, setErro] = useState<string | null>(null)

  // Inicializa o sessionId
  useEffect(() => {
    setSessionId(generateUUID())
  }, [])


  /**
   * Converte o histórico de mensagens para o formato aceito pelo Gemini.
   */
  const buildHistoricoGemini = (msgs: ChatMensagem[]) => {
    return msgs
      .filter((m) => m.role !== 'tool')
      .slice(-20) // Limita aos últimos 20 itens
      .map((m) => ({
        role: m.role === 'assistant' ? ('model' as const) : ('user' as const),
        parts: [{ text: m.content }],
      }))
  }

  /**
   * Envia uma mensagem para o Agente.
   */
  const sendMessage = useCallback(
    async (texto: string, arquivo?: File) => {
      const trimmedText = texto.trim()
      if (!trimmedText) return
      if (trimmedText.length > 2000) {
        setErro('A mensagem excede o limite de 2000 caracteres.')
        return
      }

      // Adiciona mensagem do usuário (UI otimista)
      const userMessage: ChatMensagem = {
        id: generateUUID(),
        role: 'user',

        content: trimmedText,
        created_at: new Date().toISOString(),
        metadata: arquivo ? { fileAnalyzed: { name: arquivo.name, type: arquivo.type } } : undefined
      }

      setMessages((prev) => [...prev, userMessage])
      setIsLoading(true)
      setErro(null)

      try {
        let response: Response

        if (arquivo) {
          const formData = new FormData()
          formData.append('mensagem', trimmedText)
          formData.append('historico', JSON.stringify(buildHistoricoGemini(messages)))
          formData.append('conversaId', conversaId ?? '')
          formData.append('contexto', JSON.stringify(contexto ?? {}))
          formData.append('arquivo', arquivo)
          
          response = await fetch('/api/ai-agent', {
            method: 'POST',
            body: formData,
          })
        } else {
          const body: AgentRequest = {
            mensagem: trimmedText,
            historico: buildHistoricoGemini(messages),
            conversaId: conversaId ?? undefined,
            contexto: contexto,
          }

          response = await fetch('/api/ai-agent', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(body),
          })
        }

        if (response.status === 503) {
          throw new Error('O Sid está temporariamente indisponível. Tente novamente em instantes.')
        }
        if (response.status === 401) {
          throw new Error('Sessão expirada. Faça login novamente.')
        }
        if (!response.ok) {
          const errorData = await response.json().catch(() => ({}))
          throw new Error(errorData.erro || 'Erro ao conectar com o assistente.')
        }

        const data: AgentResponse = await response.json()

        // Adiciona resposta do assistente
        const assistantMessage: ChatMensagem = {
          id: generateUUID(),
          role: 'assistant',

          content: data.resposta,
          created_at: new Date().toISOString(),
          metadata: { toolName: data.toolsUtilizadas?.join(', ') }
        }

        setMessages((prev) => [...prev, assistantMessage])
        if (data.conversaId) setConversaId(data.conversaId)
      } catch (err: any) {
        setErro(err.message || '⚠️ Erro ao processar. Tente novamente.')
        
        const errorMessage: ChatMensagem = {
          id: generateUUID(),
          role: 'assistant',

          content: '⚠️ Erro ao processar sua solicitação. Por favor, tente novamente em instantes.',
          created_at: new Date().toISOString(),
        }
        setMessages((prev) => [...prev, errorMessage])
      } finally {
        setIsLoading(false)
      }
    },
    [messages, conversaId, contexto]
  )

  /**
   * Limpa o histórico atual.
   */
  const clearHistory = useCallback(() => {
    setMessages([])
    setConversaId(null)
    setSessionId(generateUUID())
    setErro(null)

  }, [])

  return {
    messages,
    isLoading,
    sessionId,
    conversaId,
    erro,
    sendMessage,
    clearHistory,
  }
}
