"use server"

import { createClient } from "@/lib/supabase/server"
import { getCurrentUserProfile } from "@/lib/auth-utils"
import { revalidatePath } from "next/cache"

export async function saveAmbientalDetalhes(ambEmpId: string, data: any) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // Check permissions: user must have "ambiental" in modulos_acesso or nivel_acesso in ('Admin', 'Gestor')
    const profile = await getCurrentUserProfile()
    const canEdit = profile && (
        profile.nivel_acesso === 'Admin' || 
        profile.nivel_acesso === 'Gestor' || 
        profile.modulos_acesso.includes('ambiental')
    )
    if (!canEdit) return { success: false, error: 'Sem permissão de edição' }

    const payload = {
        tecnico_gma: data.tecnico_gma || null,
        gestor: data.gestor || null,
        fiscal: data.fiscal || null,
        gerencia: data.gerencia || null,
        contratada: data.contratada || null,
        contrato_spobras: data.contrato_spobras || null,
        contrato_siurb: data.contrato_siurb || null,
        sei_processo: data.sei_processo || null,
        programa: data.programa || null,
        estagio_contratacao: data.estagio !== undefined && data.estagio !== "" ? String(data.estagio) : null,
        status: data.status || null,
        prazo: data.prazo || null,
        valor_contrato: data.valor_contrato !== undefined && data.valor_contrato !== "" ? Number(data.valor_contrato) : null,
        valor_medido: data.valor_medido !== undefined && data.valor_medido !== "" ? Number(data.valor_medido) : null,
        percentual_conclusao: data.percentual_conclusao !== undefined && data.percentual_conclusao !== "" ? Number(data.percentual_conclusao) : null,
        tem_empenho: data.tem_empenho !== undefined ? Boolean(data.tem_empenho) : null,
    }

    const { error } = await supabase
        .from('ambiental_empreendimentos')
        .update(payload)
        .eq('id', ambEmpId)

    if (error) {
        console.error("[saveAmbientalDetalhes] Error:", error.message)
        return { success: false, error: error.message }
    }

    // --- SINCRONIZAÇÃO BIDIRECIONAL (Ambiental -> Serviços) ---
    try {
        const { data: currentAmb } = await supabase
            .from('ambiental_empreendimentos')
            .select('empreendimento_id')
            .eq('id', ambEmpId)
            .single()

        if (currentAmb && currentAmb.empreendimento_id) {
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

            let contratoIdToUpdate: string | null = undefined
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
                valor_total: payload.valor_contrato,
                data_fim: payload.prazo,
                status: servicoStatus
            }

            if (contratoIdToUpdate !== undefined) {
                servicoUpdatePayload.contrato_id = contratoIdToUpdate
            }

            // Atualiza todos os serviços do tipo ambiental associados a esse empreendimento_id
            await supabase
                .from('servicos')
                .update(servicoUpdatePayload)
                .eq('empreendimento_id', currentAmb.empreendimento_id)
                .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])
        }
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

export async function addAmbientalComentario(ambEmpId: string, texto: string, mencoes: string[]) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // 1. Obter nome do perfil do autor
    const { data: profile, error: profileError } = await supabase
        .from('profiles')
        .select('full_name')
        .eq('id', user.id)
        .single()

    if (profileError) {
        console.error("[addAmbientalComentario] Error fetching profile:", profileError.message)
    }
    const autorNome = profile?.full_name || 'Usuário'

    // 2. Buscar observações legadas da tabela ambiental_empreendimentos
    const { data: emp, error: empError } = await supabase
        .from('ambiental_empreendimentos')
        .select('observacoes')
        .eq('id', ambEmpId)
        .single()

    if (empError || !emp) {
        console.error("[addAmbientalComentario] Error fetching ambiental_empreendimento:", empError?.message)
        return { success: false, error: 'Registro não encontrado' }
    }

    // 3. Formatar e anexar a nova observação (formato append-only)
    const dataHora = new Intl.DateTimeFormat('pt-BR', { dateStyle: 'short', timeStyle: 'short' }).format(new Date())
    const appendText = `[${dataHora}] ${autorNome}: ${texto.trim()}`
    
    const novasObservacoes = emp.observacoes 
        ? `${emp.observacoes}\n\n${appendText}` 
        : appendText

    // 4. Salvar de volta na tabela
    const { error: updateError } = await supabase
        .from('ambiental_empreendimentos')
        .update({ observacoes: novasObservacoes })
        .eq('id', ambEmpId)

    if (updateError) {
        console.error("[addAmbientalComentario] Error saving observacoes:", updateError.message)
        return { success: false, error: updateError.message }
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

