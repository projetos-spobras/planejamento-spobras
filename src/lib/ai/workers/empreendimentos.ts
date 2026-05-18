import { SupabaseClient } from '@supabase/supabase-js'

export interface EmpreendimentoCompleto {
  dadosBase: any | null
  contratos: any[]
  fases: any[]
  servicos: any[]
  anotacoes: any[]
}

export interface EmpreendimentoResumo {
  id: string
  nome: string
  codigo: string
  status: string
  valor_total: number
}

export async function fetchEmpreendimentoCompleto(
  supabase: SupabaseClient,
  idEmpreendimento: string
): Promise<EmpreendimentoCompleto> {
  const [dadosBase, contratos, fases, servicos, anotacoes] = await Promise.all([
    // 1. Dados base do empreendimento (Supabase)
    supabase.from('empreendimentos')
      .select('*')
      .eq('id', idEmpreendimento)
      .single(),
    
    // 2. Contratos vinculados (Supabase + enriquecimento API legada)
    supabase.from('empreendimento_contratos')
      .select('*, contratos(*)')
      .eq('empreendimento_id', idEmpreendimento),
    
    // 3. Fases do planejamento (Supabase)
    supabase.from('empreendimento_fases')
      .select('*, planejamento_fases(*)')
      .eq('empreendimento_id', idEmpreendimento),
    
    // 4. Serviços (Supabase)
    supabase.from('servicos')
      .select('id, nome, valor_estimado, status')
      .eq('empreendimento_id', idEmpreendimento),
    
    // 5. Anotações do Sid (Supabase)
    supabase.from('tb_anotacoes_empreendimento')
      .select('id, texto, tipo, created_at')
      .eq('empreendimento_id', idEmpreendimento)
      .order('created_at', { ascending: false })
      .limit(5)
  ])

  return {
    dadosBase: dadosBase.error ? null : dadosBase.data,
    contratos: contratos.error ? [] : contratos.data,
    fases: fases.error ? [] : fases.data,
    servicos: servicos.error ? [] : servicos.data,
    anotacoes: anotacoes.error ? [] : anotacoes.data,
  }
}

export async function buscarEmpreendimentos(
  supabase: SupabaseClient,
  filtros: { busca?: string; status?: string; programa?: string; limite?: number }
): Promise<EmpreendimentoResumo[]> {
  let query = supabase.from('empreendimentos').select('id, nome, codigo, status_nome, valor_total')
  
  if (filtros.busca) {
    query = query.or(`nome.ilike.%${filtros.busca}%,codigo.ilike.%${filtros.busca}%`)
  }
  if (filtros.status) {
    query = query.eq('status_id', filtros.status) // Ajustar campo real se for diferente
  }
  if (filtros.programa) {
    query = query.eq('programa_id', filtros.programa) // Ajustar campo real se for diferente
  }

  const limit = Math.min(filtros.limite ?? 10, 50)
  query = query.limit(limit)

  const { data, error } = await query
  
  if (error || !data) {
    return []
  }

  return data.map(e => ({
    id: e.id,
    nome: e.nome,
    codigo: e.codigo,
    status: e.status_nome,
    valor_total: e.valor_total
  }))
}
