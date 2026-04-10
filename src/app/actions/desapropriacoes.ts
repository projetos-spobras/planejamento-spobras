"use server"

import { createClient, createAdminClient } from "@/lib/supabase/server"

// ============================================ //
// Ações do Dashboard (Autenticadas)
// ============================================ //

export async function getDesapropriacoesAgrupadas(page: number = 1, limit: number = 10) {
    const supabase = await createClient()

    const from = (page - 1) * limit;
    const to = from + limit - 1;

    const { data, count, error } = await supabase
        .from('empreendimentos')
        .select(`
            id,
            nome,
            codigo,
            servicos!inner(
                id,
                descricao,
                tipo,
                subtipo_receita,
                valor_total,
                status
            )
        `, { count: 'exact' })
        .in('servicos.tipo', ['Desapropriação', 'Desapropriações', 'Desapropriações (Ações e Materiais)', 'AÇÃO EXPROPRIATÓRIA'])
        .range(from, to)

    if (error) {
        console.error("Error fetching grouped expropriation services:", error)
        return { data: [], count: 0 }
    }

    if (!data || data.length === 0) {
        return { data: [], count: 0 }
    }

    // Normalizar os dados
    const enrichedData = data.map((emp: any) => {
        let total_acoes = 0;
        let total_materiais = 0;
        let total_valor = 0;

        emp.servicos.forEach((s: any) => {
            const hasSubtipoReceita = Array.isArray(s.subtipo_receita);
            
            // Normalize "Ações de Desapropriação" and "Materiais Expropriatórios"
            let isMaterial = hasSubtipoReceita && s.subtipo_receita.some((r: string) => r.toLowerCase().includes('mat') || r.toLowerCase().includes('materiais'));
            
            if (isMaterial) {
                total_materiais += 1;
            } else {
                // If it's not explicitly Material, we defaults to Ações because user specified:
                // "Todos os serviços criados devidos os contratos devem ser cadastrados como Ações Desap."
                total_acoes += 1;
            }

            total_valor += (s.valor_total || 0);
        });

        return {
            id: emp.id,
            nome: emp.nome,
            codigo: emp.codigo,
            servicos: emp.servicos,
            total_acoes,
            total_materiais,
            total_valor
        }
    });

    return { 
        data: enrichedData, 
        count: count || 0
    }
}
// ============================================ //
// Ações do Formulário Público (Não Autenticadas/Admin)
// ============================================ //

export async function submitDesapropriacaoPublica(formData: {
    empreendimento_id: string
    contrato_id?: string | null
    subtipos: string[]
    valor_estimado: number
    observacoes?: string
}) {
    // Usamos admin client pois o formulário é público e pode bater na RLS
    const supabaseAdmin = createAdminClient()

    // Preparar o payload. O campo `codigo` ou `descricao` pode ser genérico ou gerado.
    const descricao = `Cadastro de Desapropriações Públicas`

    const { data, error } = await supabaseAdmin
        .from('servicos')
        .insert({
            empreendimento_id: formData.empreendimento_id,
            contrato_id: formData.contrato_id || null,
            tipo: 'Desapropriação',
            subtipo_receita: formData.subtipos,
            valor_total: formData.valor_estimado,
            descricao: descricao,
            status: 'Em Análise', // Um status inicial
            unidade: 'un',
            quantidade: 1,
            preco_unitario: formData.valor_estimado
        })
        .select()
        .single()

    if (error) {
        console.error("Erro ao enviar desapropriação:", error)
        return { success: false, error: error.message }
    }

    return { success: true, data }
}

export async function getEmpreendimentosPublicos() {
    const supabaseAdmin = createAdminClient()
    
    // Buscar todos os empreendimentos ativos para o combobox
    const { data, error } = await supabaseAdmin
        .from('empreendimentos')
        .select('id, nome, codigo')
        .order('nome', { ascending: true })

    if (error) {
        console.error("Error fetching empreendimentos:", error)
        return []
    }
    return data || []
}

export async function getContratosPublicos() {
    const supabaseAdmin = createAdminClient()
    
    const { data, error } = await supabaseAdmin
        .from('contratos')
        .select('id, numero, contratada, tipo')
        .order('numero', { ascending: true })

    if (error) {
        console.error("Error fetching contratos:", error)
        return []
    }
    return data || []
}
