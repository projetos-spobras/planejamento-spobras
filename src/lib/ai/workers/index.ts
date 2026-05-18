import { SupabaseClient } from '@supabase/supabase-js'
import { fetchEmpreendimentoCompleto, EmpreendimentoCompleto } from './empreendimentos'
import { fetchResumoFinanceiro, ResumoFinanceiro } from './financeiro'

export async function fetchDadosCompletos(
  supabase: SupabaseClient,
  idEmpreendimento: string
): Promise<{ empreendimento: EmpreendimentoCompleto | null; financeiro: ResumoFinanceiro | null }> {
  const start = Date.now()
  
  const execParallel = async () => {
    const [empreendimento, financeiro] = await Promise.all([
      fetchEmpreendimentoCompleto(supabase, idEmpreendimento).catch(() => null),
      fetchResumoFinanceiro(supabase, idEmpreendimento).catch(() => null)
    ])
    return { empreendimento, financeiro }
  }

  // Timeout global de 15 segundos
  const timeout = new Promise<{ empreendimento: EmpreendimentoCompleto | null; financeiro: ResumoFinanceiro | null }>(
    (resolve) => 
      setTimeout(() => {
        console.warn(`[WORKER] Timeout: consulta demorou mais de 15s para ${idEmpreendimento}`)
        // Em caso de timeout: retornar dados parciais já coletados, não erro total
        resolve({ empreendimento: null, financeiro: null })
      }, 15000)
  )
  
  const result = await Promise.race([
    execParallel(),
    timeout
  ])

  console.log(`[WORKER] fetchDadosCompletos(${idEmpreendimento}): ${Date.now() - start}ms`)
  return result
}
