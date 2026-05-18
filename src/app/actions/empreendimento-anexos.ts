"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { startOfDay, endOfDay } from "date-fns"

export async function getEmpreendimentoAnexos(empreendimentoId: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return []

    const { data: anexos, error } = await supabase
        .from('empreendimento_anexos')
        .select(`
            *,
            perfil:profiles!empreendimento_anexos_perfil_id_fkey(id, full_name),
            updated_by_perfil:profiles!empreendimento_anexos_updated_by_fkey(full_name),
            servico:servicos(id, nome:descricao)
        `)
        .eq('empreendimento_id', empreendimentoId)
        .order('created_at', { ascending: false })

    if (error) {
        console.error("[getEmpreendimentoAnexos]", error)
        return []
    }

    return anexos || []
}

export async function addEmpreendimentoAnexo(formData: FormData) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const empreendimentoId = formData.get("id") as string
    const titulo = formData.get("titulo") as string
    const file = formData.get("file") as File
    const servicoId = formData.get("servico_id") as string | null

    if (!empreendimentoId || !titulo || !file) {
        return { success: false, error: "Dados incompletos" }
    }

    // 1. Calcular a numeração automática para o dia atual
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
        console.error("[addEmpreendimentoAnexo]", countError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
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
        console.error("[addEmpreendimentoAnexo]", uploadError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    // 3. Salvar no Banco
    const { error: insertError } = await supabase
        .from('empreendimento_anexos')
        .insert({
            empreendimento_id: empreendimentoId,
            titulo: titulo,
            numero: proximoNumero,
            caminho_arquivo: filePath,
            tamanho_arquivo: file.size,
            tipo_arquivo: file.type,
            perfil_id: user.id,
            servico_id: servicoId || null
        })

    if (insertError) {
        // Rollback storage if database fails
        await supabase.storage.from('empreendimento-anexos').remove([filePath])
        console.error("[addEmpreendimentoAnexo]", insertError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    return { success: true }
}

export async function deleteEmpreendimentoAnexo(id: string, path: string, empreendimentoId: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // 1. Deletar do Storage
    const { error: storageError } = await supabase.storage
        .from('empreendimento-anexos')
        .remove([path])

    if (storageError) {
        console.warn("[deleteEmpreendimentoAnexo]", storageError)
    }

    // 2. Deletar do Banco
    const { error: dbError } = await supabase
        .from('empreendimento_anexos')
        .delete()
        .eq('id', id)

    if (dbError) {
        console.error("[deleteEmpreendimentoAnexo]", dbError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    return { success: true }
}

export async function editEmpreendimentoAnexo(id: string, empreendimentoId: string, titulo: string, servicoId: string | null) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error } = await supabase
        .from('empreendimento_anexos')
        .update({
            titulo: titulo,
            servico_id: servicoId || null,
            updated_at: new Date().toISOString(),
            updated_by: user.id
        })
        .eq('id', id)

    if (error) {
        console.error("[editEmpreendimentoAnexo]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    return { success: true }
}
