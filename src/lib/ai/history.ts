import { SupabaseClient } from '@supabase/supabase-js'

/**
 * Salva uma mensagem no histórico do Supabase
 */
export async function salvarMensagem(
  supabase: SupabaseClient,
  conversaId: string,
  role: 'user' | 'assistant' | 'tool',
  content: string,
  metadata: any = {}
) {
  const { data, error } = await supabase
    .from('tb_chat_mensagens')
    .insert({
      conversa_id: conversaId,
      role,
      content,
      metadata
    })
    .select('id')
    .single()

  if (error) {
    console.error('[salvarMensagem]', error)
    throw error
  }

  return data.id
}

/**
 * Busca o histórico de mensagens formatado para o Gemini
 */
export async function buscarHistorico(
  supabase: SupabaseClient,
  conversaId: string,
  limite = 20
) {
  const { data, error } = await supabase
    .from('tb_chat_mensagens')
    .select('role, content')
    .eq('conversa_id', conversaId)
    .order('created_at', { ascending: true })
    .limit(limite)

  if (error) {
    console.error('[buscarHistorico]', error)
    return []
  }

  // Mapeia para o formato do Gemini SDK
  return data
    .filter(m => m.role !== 'tool') // Gemini espera tool results via interface específica, não no histórico simples
    .map(m => ({
      role: m.role === 'assistant' ? ('model' as const) : ('user' as const),
      parts: [{ text: m.content }]
    }))
}

/**
 * Cria uma nova conversa ou busca uma recente vinculada a um empreendimento
 */
export async function criarOuBuscarConversa(
  supabase: SupabaseClient,
  userId: string,
  empreendimentoId?: string
) {
  if (empreendimentoId) {
    // Busca conversa recente (últimas 24h) para o mesmo empreendimento
    const { data: existente } = await supabase
      .from('tb_chat_conversas')
      .select('id')
      .eq('user_id', userId)
      .eq('id_empreendimento', empreendimentoId)
      .gt('created_at', new Date(Date.now() - 24 * 60 * 60 * 1000).toISOString())
      .order('created_at', { ascending: false })
      .limit(1)
      .single()

    if (existente) {
      return { conversaId: existente.id, isNova: false }
    }
  }

  // Cria nova conversa
  const { data: nova, error } = await supabase
    .from('tb_chat_conversas')
    .insert({
      user_id: userId,
      id_empreendimento: empreendimentoId || null,
      titulo: 'Nova conversa'
    })
    .select('id')
    .single()

  if (error) {
    console.error('[criarOuBuscarConversa]', error)
    throw error
  }

  return { conversaId: nova.id, isNova: true }
}

/**
 * Atualiza o título da conversa com base na primeira mensagem
 */
export async function atualizarTituloConversa(
  supabase: SupabaseClient,
  conversaId: string,
  primeiraMensagem: string
) {
  // Limpa caracteres especiais e limita tamanho
  const titulo = primeiraMensagem
    .replace(/[^\w\sÀ-ÿ]/gi, '')
    .substring(0, 60)
    .trim() || 'Nova conversa'

  await supabase
    .from('tb_chat_conversas')
    .update({ titulo })
    .eq('id', conversaId)
}
