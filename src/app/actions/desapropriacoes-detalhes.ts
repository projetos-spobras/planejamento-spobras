"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

export async function getEmpreendimentoDesapropriacoes(empreendimentoId: string) {
    const supabase = await createClient();
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return null

    // 1. Obter o Empreendimento
    const { data: empreendimento, error: empError } = await supabase
        .from('empreendimentos')
        .select(`
            *
        `)
        .eq('id', empreendimentoId)
        .single();

    if (empError || !empreendimento) {
        console.error("[getEmpreendimentoDesapropriacoes]", empError);
        return null;
    }

    // 2. Obter TODOS os Serviços de Desapropriação vinculados
    const { data: servicos, error: sError } = await supabase
        .from('servicos')
        .select(`
            *,
            contrato:contratos(*)
        `)
        .eq('empreendimento_id', empreendimentoId)
        .in('tipo', ['Desapropriação', 'Desapropriações', 'Desapropriações (Ações e Materiais)', 'AÇÃO EXPROPRIATÓRIA']);

    if (sError) {
        console.error("[getEmpreendimentoDesapropriacoes]", sError);
        return null;
    }

    // 3. Organizar os Serviços em Ações e Materiais
    const acoes: any[] = [];
    const materiais: any[] = [];
    const servicoIds: string[] = [];

    (servicos || []).forEach(servico => {
        servicoIds.push(servico.id);
        const hasSubtipoReceita = Array.isArray(servico.subtipo_receita);
        const isMaterial = hasSubtipoReceita && servico.subtipo_receita.some((r: string) => r.toLowerCase().includes('mat') || r.toLowerCase().includes('materiais'));

        // Normalização Mínima
        const normalized = {
            ...servico,
            tipo: 'Desapropriações', // Force it so the dialog recognizes it properly
        }

        if (isMaterial) materiais.push(normalized);
        else acoes.push(normalized);
    });

    // 4. Buscar Comentários para TODOS esses Serviços
    let comentarios = [];
    if (servicoIds.length > 0) {
        const { data: coms } = await supabase
            .from('servico_comentarios')
            .select(`
                *,
                user:profiles(full_name, email, role)
            `)
            .in('servico_id', servicoIds)
            .order('created_at', { ascending: false });
        comentarios = coms || [];
    }

    // 5. Buscar Anexos para TODOS esses Serviços
    let anexos = [];
    if (servicoIds.length > 0) {
        const { data: anxs } = await supabase
            .from('servico_anexos')
            .select(`
                *,
                user:profiles(full_name, email, role)
            `)
            .in('servico_id', servicoIds)
            .order('created_at', { ascending: false });
        anexos = anxs || [];
    }

    // 6. Buscar Processos Judiciais para TODOS os serviços de Ações
    let processos: any[] = [];
    let processoComentarios: any[] = [];
    let processoAnexos: any[] = [];
    const acoesIds = acoes.map(a => a.id);
    if (acoesIds.length > 0) {
        const { data: procs } = await supabase
            .from('desapropriacao_processos')
            .select(`
                *,
                perfil:profiles(full_name, email)
            `)
            .in('servico_id', acoesIds)
            .order('created_at', { ascending: false });
        processos = procs || [];

        if (processos.length > 0) {
            const procIds = processos.map(p => p.id);
            // Comentários dos Processos
            const { data: procComs } = await supabase
                .from('processo_comentarios')
                .select(`
                    *,
                    user:profiles(full_name, email, role)
                `)
                .in('processo_id', procIds)
                .order('created_at', { ascending: false });
            processoComentarios = procComs || [];

            // Anexos dos Processos
            const { data: procAnxs } = await supabase
                .from('processo_anexos')
                .select(`
                    *,
                    user:profiles(full_name, email, role)
                `)
                .in('processo_id', procIds)
                .order('created_at', { ascending: false });
            processoAnexos = procAnxs || [];
        }
    }

    return {
        empreendimento,
        servicosReunidos: {
            acoes,
            materiais
        },
        comentarios,
        anexos,
        processos,
        processoComentarios,
        processoAnexos
    }
}

// ============================================ //
// Processos Judiciais
// ============================================ //

export async function addProcesso(data: {
    servico_id: string
    numero_processo: string
    descricao?: string
}) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error } = await supabase
        .from('desapropriacao_processos')
        .insert({
            servico_id: data.servico_id,
            numero_processo: data.numero_processo.trim(),
            descricao: data.descricao || null,
            perfil_id: user.id
        })

    if (error) {
        console.error("[addProcesso]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}

export async function deleteProcesso(id: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error } = await supabase
        .from('desapropriacao_processos')
        .delete()
        .eq('id', id)

    if (error) {
        console.error("[deleteProcesso]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}

export async function addProcessoComentario(data: {
    processo_id: string,
    conteudo: string,
    anexos?: any[]
}) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { data: comentario, error: cError } = await supabase
        .from('processo_comentarios')
        .insert({
            processo_id: data.processo_id,
            conteudo: data.conteudo,
            perfil_id: user.id
        })
        .select()
        .single()

    if (cError) {
        console.error("[addProcessoComentario]", cError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    if (data.anexos && data.anexos.length > 0) {
        const { error: aError } = await supabase
            .from('processo_anexos')
            .insert(data.anexos.map(anexo => ({
                ...anexo,
                processo_id: data.processo_id,
                comentario_id: comentario.id,
                perfil_id: user.id
            })))
        if (aError) console.error("[addProcessoComentario]", aError);
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}

export async function deleteProcessoComentario(id: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error } = await supabase
        .from('processo_comentarios')
        .delete()
        .eq('id', id)

    if (error) {
        console.error("[deleteProcessoComentario]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}

export async function addProcessoAnexo(data: {
    processo_id: string,
    nome_arquivo: string,
    caminho_arquivo: string,
    tamanho_arquivo: number,
    tipo_arquivo: string
}) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error } = await supabase
        .from('processo_anexos')
        .insert({
            processo_id: data.processo_id,
            nome_arquivo: data.nome_arquivo,
            caminho_arquivo: data.caminho_arquivo,
            tamanho_arquivo: data.tamanho_arquivo,
            tipo_arquivo: data.tipo_arquivo,
            perfil_id: user.id
        })

    if (error) {
        console.error("[addProcessoAnexo]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}

export async function deleteProcessoAnexo(id: string, path: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { error: storageError } = await supabase.storage
        .from('servico-anexos')
        .remove([path])

    if (storageError) console.warn("[deleteProcessoAnexo]", storageError);

    const { error } = await supabase
        .from('processo_anexos')
        .delete()
        .eq('id', id)

    if (error) {
        console.error("[deleteProcessoAnexo]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
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
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

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

    if (error) {
        console.error("[addComentario]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

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

    revalidatePath(`/desapropriacoes/${data.servico_id}`)
    return { success: true }
}

export async function deleteComentario(id: string, servico_id: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

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

    if (error) {
        console.error("[deleteComentario]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath(`/desapropriacoes/${servico_id}`)
    return { success: true }
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
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

    const { error } = await supabase
        .from('servico_anexos')
        .insert({
            ...data,
            perfil_id: user.id
        })

    if (error) {
        console.error("[addAnexo]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath(`/desapropriacoes/${data.servico_id}`)
    return { success: true }
}

export async function getSignedUrl(path: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return null

    const { data, error } = await supabase.storage
        .from('servico-anexos')
        .createSignedUrl(path, 3600) // 1 hora de validade

    if (error) {
        console.error("[getSignedUrl]", error)
        return null
    }

    return data.signedUrl
}

export async function deleteAnexo(id: string, path: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }
    
    // 1. Deletar do Storage
    const { error: sError } = await supabase.storage
        .from('servico-anexos')
        .remove([path])

    if (sError) {
        console.error("[deleteAnexo]", sError)
    }

    // 2. Deletar do Banco
    const { error: bError } = await supabase
        .from('servico_anexos')
        .delete()
        .eq('id', id)

    if (bError) {
        console.error("[deleteAnexo]", bError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/desapropriacoes')
    return { success: true }
}
