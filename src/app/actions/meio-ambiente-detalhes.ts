"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

export async function getServicoDetails(id: string, subtipo: string) {
    // Mantido por retrocompatibilidade se algum outro lugar chamar, 
    // mas o padrão agora é usar getEmpreendimentoAmbientalDetails
    const supabase = await createClient()
    const { data: servico } = await supabase.from('servicos').select(`*, empreendimento:empreendimentos(*), contrato:contratos(*)`).eq('id', id).single()
    if (!servico) return null
    const { data: comentarios } = await supabase.from('servico_comentarios').select(`*, perfil:profiles(full_name, role)`).eq('servico_id', id).eq('subtipo', subtipo || '').order('created_at', { ascending: false })
    const { data: anexos } = await supabase.from('servico_anexos').select(`*, perfil:profiles(full_name)`).eq('servico_id', id).eq('subtipo', subtipo || '').order('created_at', { ascending: false })
    const { data: medicoes } = await supabase.from('medicoes').select('*').eq('servico_id', id).order('data_medicao', { ascending: false })
    return { servico, comentarios: comentarios || [], anexos: anexos || [], medicoes: medicoes || [] }
}

export async function getEmpreendimentoAmbientalDetails(empreendimentoId: string) {
    const supabase = await createClient()

    // 1. Buscar o empreendimento
    const { data: empreendimento, error: eError } = await supabase
        .from('empreendimentos')
        .select('*')
        .eq('id', empreendimentoId)
        .single()

    if (eError || !empreendimento) return null

    // 2. Buscar TODOS os serviços do tipo 'Ambiental' para este empreendimento
    const { data: servicos, error: sError } = await supabase
        .from('servicos')
        .select(`
            *,
            contrato:contratos(*)
        `)
        .eq('empreendimento_id', empreendimentoId)
        .eq('tipo', 'Ambiental')
        .order('created_at', { ascending: true })

    if (sError) return null

    const servicoIds = servicos.map(s => s.id)

    // 3. Buscar comentários e anexos para todos esses serviços
    let comentarios: any[] = []
    let anexos: any[] = []
    let medicoes: any[] = []

    if (servicoIds.length > 0) {
        const { data: coms } = await supabase
            .from('servico_comentarios')
            .select(`
                *,
                perfil:profiles(full_name, role)
            `)
            .in('servico_id', servicoIds)
            .order('created_at', { ascending: false })
        comentarios = coms || []

        const { data: anxs } = await supabase
            .from('servico_anexos')
            .select(`
                *,
                perfil:profiles(full_name)
            `)
            .in('servico_id', servicoIds)
            .order('created_at', { ascending: false })
        anexos = anxs || []

        const { data: meds } = await supabase
            .from('medicoes')
            .select('*')
            .in('servico_id', servicoIds)
            .order('data_medicao', { ascending: false })
        medicoes = meds || []
    }

    return {
        empreendimento,
        servicos,
        comentarios,
        anexos,
        medicoes
    }
}

export async function addComentario(data: { 
    servico_id: string, 
    subtipo: string, 
    conteudo: string,
    anexos?: {
        nome_arquivo: string,
        caminho_arquivo: string,
        tamanho_arquivo: number,
        tipo_arquivo: string
    }[]
}) {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    if (!user) throw new Error("Unauthorized")

    // 1. Criar o comentário
    const { data: comment, error } = await supabase
        .from('servico_comentarios')
        .insert({
            servico_id: data.servico_id,
            subtipo: data.subtipo,
            conteudo: data.conteudo,
            perfil_id: user.id
        })
        .select()
        .single()

    if (error) return { success: false, error: error.message }

    // 2. Se houver anexos, vincular ao comentário (Inclusão em lote)
    if (data.anexos && data.anexos.length > 0 && comment) {
        const anexosToInsert = data.anexos.map(anexo => ({
            ...anexo,
            servico_id: data.servico_id,
            subtipo: data.subtipo,
            perfil_id: user.id,
            comentario_id: comment.id
        }))

        await supabase
            .from('servico_anexos')
            .insert(anexosToInsert)
    }

    revalidatePath(`/meio-ambiente/${data.servico_id}`)
    return { success: true }
}

export async function deleteComentario(id: string, servico_id: string) {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    if (!user) throw new Error("Unauthorized")

    // 1. Buscar caminhos dos arquivos de anexos vinculados a este comentário para limpeza física
    const { data: anexos } = await supabase
        .from('servico_anexos')
        .select('caminho_arquivo')
        .eq('comentario_id', id)

    if (anexos && anexos.length > 0) {
        const pathsToDelete = anexos.map(a => a.caminho_arquivo)
        await supabase.storage
            .from('servico-anexos')
            .remove(pathsToDelete)
    }

    // 2. Deletar o comentário (disparará CASCADE no banco para as linhas de servico_anexos)
    const { error } = await supabase
        .from('servico_comentarios')
        .delete()
        .eq('id', id)
        .eq('perfil_id', user.id)

    if (!error) {
        revalidatePath(`/meio-ambiente/${servico_id}`)
    }

    return { success: !error, error: error?.message }
}

export async function addAnexo(data: { 
    servico_id: string, 
    subtipo: string, 
    nome_arquivo: string, 
    caminho_arquivo: string,
    tamanho_arquivo: number,
    tipo_arquivo: string
}) {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    if (!user) throw new Error("Unauthorized")

    const { error } = await supabase
        .from('servico_anexos')
        .insert({
            ...data,
            perfil_id: user.id
        })

    if (!error) {
        revalidatePath(`/meio-ambiente/${data.servico_id}`)
    }

    return { success: !error, error: error?.message }
}

export async function getSignedUrl(path: string) {
    const supabase = await createClient()
    const { data, error } = await supabase.storage
        .from('servico-anexos')
        .createSignedUrl(path, 3600) // 1 hora de validade

    if (error) {
        console.error("Error generating signed URL:", error)
        return null
    }

    return data.signedUrl
}

export async function deleteAnexo(id: string, path: string) {
    const supabase = await createClient()
    
    // 1. Deletar do Storage
    const { error: sError } = await supabase.storage
        .from('servico-anexos')
        .remove([path])

    if (sError) {
        console.error("Error removing from storage:", sError)
    }

    // 2. Deletar do Banco
    const { error: bError } = await supabase
        .from('servico_anexos')
        .delete()
        .eq('id', id)

    if (!bError) {
        revalidatePath('/meio-ambiente')
    }

    return { success: !bError, error: bError?.message }
}
