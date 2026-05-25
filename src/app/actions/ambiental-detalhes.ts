"use server"

import { createClient } from "@/lib/supabase/server"
import { getCurrentUserProfile } from "@/lib/auth-utils"
import { revalidatePath } from "next/cache"

// ambEmpId aqui é o servico_id (UUID da tabela servicos)
export async function saveAmbientalDetalhes(ambEmpId: string, data: any) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // Verifica permissão: Admin, Gestor ou acesso ao módulo ambiental
    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor' || 
        profile.modulos_acesso.includes('ambiental')
    )
    if (!canEdit) return { success: false, error: 'Sem permissão de edição' }

    const payload = {
        servico_id: ambEmpId,
        tecnico_gma: data.tecnico_gma || null,
        gestor: data.gestor || null,
        fiscal: data.fiscal || null,
        gerencia: data.gerencia || null,
        contratada: data.contratada || null,
        contrato_spobras: data.contrato_spobras || null,
        contrato_siurb: data.contrato_siurb || null,
        sei_processo: data.sei_processo || null,
        programa: data.programa || null,
        estagio: data.estagio !== undefined && data.estagio !== "" ? Number(data.estagio) : null,
        status: data.status || null,
        prazo: data.prazo || null,
        valor_contrato: data.valor_contrato !== undefined && data.valor_contrato !== "" ? Number(data.valor_contrato) : null,
        valor_medido: data.valor_medido !== undefined && data.valor_medido !== "" ? Number(data.valor_medido) : null,
        percentual_conclusao: data.percentual_conclusao !== undefined && data.percentual_conclusao !== "" ? Number(data.percentual_conclusao) : null,
        tem_empenho: data.tem_empenho !== undefined ? Boolean(data.tem_empenho) : null,
    }

    // Upsert em ambiental_detalhes pelo servico_id
    const { error } = await supabase
        .from('ambiental_detalhes')
        .upsert(payload, { onConflict: 'servico_id' })

    if (error) {
        console.error("[saveAmbientalDetalhes] Error:", error.message)
        return { success: false, error: error.message }
    }

    // --- SINCRONIZAÇÃO BIDIRECIONAL (Ambiental -> Serviços) ---
    try {
        let servicoStatus = 'Andamento'
        if (payload.status) {
            const statusLower = payload.status.toLowerCase()
            if (statusLower.includes('concl') || statusLower.includes('final') || statusLower.includes('encerr')) {
                servicoStatus = 'Concluído'
            } else if (statusLower.includes('susp')) {
                servicoStatus = 'Suspenso'
            } else if (statusLower.includes('licit')) {
                servicoStatus = 'Licitado'
            }
        }

        let contratoIdToUpdate: string | null | undefined = undefined
        if (payload.contrato_spobras) {
            const { data: matchingContrato } = await supabase
                .from('contratos')
                .select('id')
                .ilike('numero', `%${payload.contrato_spobras}%`)
                .limit(1)
                .maybeSingle()

            if (matchingContrato) {
                contratoIdToUpdate = matchingContrato.id
            }
        }

        const servicoUpdatePayload: any = {
            data_fim: payload.prazo,
            status: servicoStatus
        }
        if (payload.valor_contrato) servicoUpdatePayload.valor_total = payload.valor_contrato
        if (contratoIdToUpdate !== undefined) servicoUpdatePayload.contrato_id = contratoIdToUpdate

        await supabase
            .from('servicos')
            .update(servicoUpdatePayload)
            .eq('id', ambEmpId)
    } catch (syncErr: any) {
        console.error("[saveAmbientalDetalhes] Sincronização falhou:", syncErr.message)
    }

    revalidatePath(`/ambiental/${ambEmpId}`)
    revalidatePath(`/ambiental`)
    return { success: true }
}

export async function updateLicenciamentoStatus(id: string, ambEmpId: string, status: string | null) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor' || 
        profile.modulos_acesso.includes('ambiental')
    )
    if (!canEdit) return { success: false, error: 'Sem permissão de edição' }

    const { error } = await supabase
        .from('ambiental_licenciamentos')
        .update({ status: status || null })
        .eq('id', id)

    if (error) {
        console.error("[updateLicenciamentoStatus] Error:", error.message)
        return { success: false, error: error.message }
    }

    revalidatePath(`/ambiental/${ambEmpId}`)
    revalidatePath(`/ambiental`)
    return { success: true }
}

export async function updateLicenciamentoObservacao(id: string, ambEmpId: string, observacao: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor' || 
        profile.modulos_acesso.includes('ambiental')
    )
    if (!canEdit) return { success: false, error: 'Sem permissão de edição' }

    const { error } = await supabase
        .from('ambiental_licenciamentos')
        .update({ observacao: observacao || null })
        .eq('id', id)

    if (error) {
        console.error("[updateLicenciamentoObservacao] Error:", error.message)
        return { success: false, error: error.message }
    }

    revalidatePath(`/ambiental/${ambEmpId}`)
    return { success: true }
}

// ambEmpId aqui é o servico_id (UUID da tabela servicos)
export async function addAmbientalComentario(ambEmpId: string, texto: string, mencoes: string[]) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // Inserir diretamente na tabela ambiental_comentarios pelo servico_id
    const { error: insertError } = await supabase
        .from('ambiental_comentarios')
        .insert({
            servico_id: ambEmpId,
            autor_id: user.id,
            texto: texto.trim(),
            mencoes: mencoes || []
        })

    if (insertError) {
        console.error("[addAmbientalComentario] Erro ao inserir comentário:", insertError.message)
        return { success: false, error: insertError.message }
    }

    revalidatePath(`/ambiental/${ambEmpId}`)
    return { success: true }
}

export async function searchPerfis(searchQuery: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return []

    const { data, error } = await supabase
        .from('profiles')
        .select('id, full_name, email')
        .ilike('full_name', `%${searchQuery}%`)
        .limit(10)

    if (error) {
        console.error("[searchPerfis] Error:", error.message)
        return []
    }

    // Adaptar full_name para o nome_completo esperado pelo frontend
    return (data || []).map(p => ({
        id: p.id,
        nome_completo: p.full_name,
        email: p.email
    }))
}

export async function getAmbientalTecnicos() {
    const supabase = await createClient()
    const { data, error } = await supabase
        .from('ambiental_tecnicos')
        .select('id, nome')
        .order('nome', { ascending: true })

    if (error) {
        console.warn("[getAmbientalTecnicos] Usando fallback estático:", error.message)
        const fallbackData = [
            { id: '1', nome: 'Audrey' },
            { id: '2', nome: 'Sonia' },
            { id: '3', nome: 'Mel' },
            { id: '4', nome: 'Juliana' },
            { id: '5', nome: 'Romualdo' },
            { id: '6', nome: 'Leonan' },
            { id: '7', nome: 'Mateus' }
        ]
        return { success: true, data: fallbackData }
    }
    return { success: true, data: data || [] }
}

export async function addAmbientalTecnico(nome: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor'
    )
    if (!canEdit) return { success: false, error: 'Sem permissão para cadastrar técnicos' }

    const { error } = await supabase
        .from('ambiental_tecnicos')
        .insert({ nome: nome.trim() })

    if (error) {
        console.error("[addAmbientalTecnico] Error:", error.message)
        return { success: false, error: error.message }
    }

    revalidatePath('/ambiental')
    return { success: true }
}

export async function deleteAmbientalTecnico(id: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor'
    )
    if (!canEdit) return { success: false, error: 'Sem permissão para excluir técnicos' }

    const { error } = await supabase
        .from('ambiental_tecnicos')
        .delete()
        .eq('id', id)

    if (error) {
        console.error("[deleteAmbientalTecnico] Error:", error.message)
        return { success: false, error: error.message }
    }

    revalidatePath('/ambiental')
    return { success: true }
}

