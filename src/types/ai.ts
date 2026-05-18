/**
 * Definições de tipos para o sistema de IA Copiloto
 */

export interface ChatMensagem {
  id: string
  role: 'user' | 'assistant' | 'tool'
  content: string
  metadata?: {
    toolName?: string
    toolResult?: unknown
    fileAnalyzed?: { name: string; type: string }
    error?: string
  }
  created_at: string
}

export interface ChatConversa {
  id: string
  user_id: string
  titulo: string
  id_empreendimento?: string | null
  created_at: string
  updated_at: string
  mensagens?: ChatMensagem[]
}

/**
 * Interface para a requisição enviada ao Agent Route Handler
 */
export interface AgentRequest {
  conversaId?: string
  mensagem: string
  // Formato compatível com o histórico de chat do Gemini SDK
  historico: Array<{ 
    role: 'user' | 'model'
    parts: Array<{ text: string }> 
  }>
  contexto?: {
    empreendimentoId?: string
    contratoId?: string
  }
  arquivo?: {
    base64: string
    mimeType: string
    nome: string
  }
}

/**
 * Interface para a resposta retornada pelo Agent Route Handler
 */
export interface AgentResponse {
  resposta: string
  conversaId: string
  toolsUtilizadas?: string[]
  erro?: string
}
