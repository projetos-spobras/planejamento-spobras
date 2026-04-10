"use server"

import { unstable_cache } from "next/cache"

import { createAdminClient } from "@/lib/supabase/admin"
import { getEmpreendimentosSelectionList } from "@/lib/api-client"
import { startOfDay, endOfDay } from "date-fns"

/**
 * Busca empreendimentos para a página de upload externo.
 * Implementa busca no servidor e exclusão de itens "TESTE".
 * Cache de 5 minutos para performance.
 */
/**
 * Busca empreendimentos para a página de upload externo.
 * Traz a lista completa para o frontend filtrar em memória (UX superior).
 */
export async function getEmpreendimentosExterno(search?: string) {
    const supabase = createAdminClient()
    
    // Usamos a lista completa (com cache)
    const data = await getEmpreendimentosSelectionList(supabase)

    return data || []
}



export async function getServicosAcompanhamentoExterno(empreendimentoId: string) {
    const supabase = createAdminClient()
    const { data, error } = await supabase
        .from('servicos')
        .select('id, descricao, codigo, status')
        .eq('empreendimento_id', empreendimentoId)
        .eq('acompanha_fisico', true)
        .order('descricao')

    if (error) {
        console.error("Erro ao buscar servicos fisicos externos:", error)
        return []
    }
    return data || []
}

export async function submitUploadExterno(formData: FormData) {
    const supabase = createAdminClient()

    const empreendimentoId = formData.get("empreendimento_id") as string
    const titulo = formData.get("titulo") as string
    const file = formData.get("file") as File
    const servicoId = formData.get("servico_id") as string | null
    const uploadedByName = formData.get("uploaded_by_name") as string
    const uploadedByEmail = formData.get("uploaded_by_email") as string

    if (!empreendimentoId || !titulo || !file || !uploadedByName || !uploadedByEmail) {
        return { success: false, error: "Por favor, preencha todos os campos obrigatórios." }
    }

    try {
        // 1. Calcular a numeração automática
        const hoje = new Date()
        const inicioDia = startOfDay(hoje).toISOString()
        const fimDia = endOfDay(hoje).toISOString()

        const { count, error: countError } = await supabase
            .from('empreendimento_anexos')
            .select('*', { count: 'exact', head: true })
            .eq('empreendimento_id', empreendimentoId)
            .gte('created_at', inicioDia)
            .lte('created_at', fimDia)

        if (countError) {
            console.error("Erro ao contar anexos do dia:", countError)
            return { success: false, error: "Erro ao gerar a numeração do arquivo." }
        }

        const proximoNumero = (count || 0) + 1

        // 2. Upload para o Storage
        const fileExt = file.name.split('.').pop()
        const fileName = `${Date.now()}-${Math.random().toString(36).substring(2)}.${fileExt}`
        const filePath = `${empreendimentoId}/${fileName}`

        const { error: uploadError } = await supabase.storage
            .from('empreendimento-anexos')
            .upload(filePath, file)

        if (uploadError) {
            console.error("Erro no upload do storage:", uploadError)
            return { success: false, error: "Falha ao enviar o arquivo físico para os servidores." }
        }

        // 3. Salvar no Banco de Dados
        const { error: insertError } = await supabase
            .from('empreendimento_anexos')
            .insert({
                empreendimento_id: empreendimentoId,
                titulo: titulo,
                numero: proximoNumero,
                caminho_arquivo: filePath,
                tamanho_arquivo: file.size,
                tipo_arquivo: file.type,
                perfil_id: null, // explicit external
                servico_id: servicoId || null,
                uploaded_by_name: uploadedByName,
                uploaded_by_email: uploadedByEmail
            })

        if (insertError) {
            // Revert storage upload since DB failed
            await supabase.storage.from('empreendimento-anexos').remove([filePath])
            console.error("Erro ao salvar no banco:", insertError)
            return { success: false, error: "Falha ao salvar as informações do arquivo." }
        }

        return { success: true }
    } catch (error) {
        console.error("Erro inesperado durante o upload externo:", error)
        return { success: false, error: "Ocorreu um erro inesperado." }
    }
}
