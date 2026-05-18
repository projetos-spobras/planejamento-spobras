"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

const LICENCIAMENTOS_TIPOS = [
    'ARQUEOLOGIA', 'DAEE', 'DISPENSA_LICENCA', 'AREAS_CONTAMINADAS', 
    'TCA', 'PLANTIO', 'EVA', 'EIA_RIMA', 'LAP', 'LAI', 'LAO'
]

// Busca dados ambientais por ID do registro ambiental
export async function getAmbientalData(id: string) {
    const supabase = await createClient()

    const { data: empreendimentoData, error: empError } = await supabase
        .from('ambiental_empreendimentos')
        .select('*, empreendimento:empreendimentos(id, nome)')
        .eq('id', id)
        .maybeSingle()

    if (empError) {
        console.error("Erro ao buscar ambiental_empreendimentos:", empError)
        return null
    }

    let licenciamentosData: any[] = []
    
    if (empreendimentoData) {
        const { data: licData, error: licError } = await supabase
            .from('ambiental_licenciamentos')
            .select('*')
            .eq('ambiental_empreendimento_id', id)

        if (!licError && licData) {
            licenciamentosData = licData
        }
    }

    return {
        empreendimento: empreendimentoData || null,
        licenciamentos: licenciamentosData
    }
}

// Verifica se o usuário tem permissão para editar (Admin ou GMA)
async function checkPermission(supabase: any): Promise<{ allowed: boolean; user: any; profile: any }> {
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return { allowed: false, user: null, profile: null }

    const { data: profile } = await supabase
        .from('profiles')
        .select('role, full_name')
        .eq('id', user.id)
        .single()

    if (!profile) return { allowed: false, user, profile: null }

    const role = (profile.role || '').toLowerCase()
    const allowed = role === 'admin' || role.includes('gma')

    return { allowed, user, profile }
}

// Salva dados ambientais
export async function saveAmbientalData(
    id: string,
    ambientalEmpData: any, // dados do form
    licenciamentosData: any[], // grid de licenciamentos
    novaObservacao: string // texto para append-only
) {
    const supabase = await createClient()
    
    // 1. Valida permissão
    const { allowed, profile } = await checkPermission(supabase)
    if (!allowed) {
        return { success: false, error: "Apenas usuários do perfil Admin ou GMA podem editar esses dados." }
    }

    try {
        // 2. Busca o registro principal se existir
        let { data: existingEmp } = await supabase
            .from('ambiental_empreendimentos')
            .select('id, observacoes')
            .eq('id', id)
            .maybeSingle()

        // 3. Processa append na observação
        let finalObservacoes = existingEmp?.observacoes || ""
        if (novaObservacao && novaObservacao.trim() !== "") {
            const dataHora = new Intl.DateTimeFormat('pt-BR', { dateStyle: 'short', timeStyle: 'short' }).format(new Date())
            const autor = profile?.full_name || 'Usuário'
            const appendText = `[${dataHora}] ${autor}: ${novaObservacao.trim()}`
            
            finalObservacoes = finalObservacoes 
                ? `${finalObservacoes}\n\n${appendText}` 
                : appendText
        }

        const payloadToSave = {
            empreendimento_id: ambientalEmpData.empreendimento_id || null,
            nome_empreendimento: ambientalEmpData.nome_empreendimento || null,
            tecnico_gma: ambientalEmpData.tecnico_gma || null,
            tipo_servico: ambientalEmpData.tipo_servico || null,
            contrato_spobras: ambientalEmpData.contrato_spobras || null,
            contrato_siurb: ambientalEmpData.contrato_siurb || null,
            sei_processo: ambientalEmpData.sei_processo || null,
            status: ambientalEmpData.status || null,
            estagio_contratacao: ambientalEmpData.estagio_contratacao || null,
            tem_empenho: ambientalEmpData.tem_empenho || false,
            gerencia: ambientalEmpData.gerencia || null,
            contratada: ambientalEmpData.contratada || null,
            gestor: ambientalEmpData.gestor || null,
            fiscal: ambientalEmpData.fiscal || null,
            prazo: ambientalEmpData.prazo || null,
            valor_contrato: ambientalEmpData.valor_contrato || 0,
            valor_medido: ambientalEmpData.valor_medido || 0,
            percentual_conclusao: ambientalEmpData.percentual_conclusao || 0,
            programa: ambientalEmpData.programa || null,
            observacoes: finalObservacoes
        }

        let ambEmpId = existingEmp?.id

        if (ambEmpId) {
            // Update
            const { error: upError } = await supabase
                .from('ambiental_empreendimentos')
                .update(payloadToSave)
                .eq('id', ambEmpId)
            
            if (upError) throw upError
        } else {
            // Insert
            const { data: newEmp, error: insError } = await supabase
                .from('ambiental_empreendimentos')
                .insert(payloadToSave)
                .select('id')
                .single()
            
            if (insError) throw insError
            ambEmpId = newEmp.id
        }

        // 4. Salva Grid de Licenciamentos
        // Vamos garantir que tenhamos uma entrada para cada tipo
        const existingLic = await supabase
            .from('ambiental_licenciamentos')
            .select('id, tipo')
            .eq('ambiental_empreendimento_id', ambEmpId)

        const existingMap = new Map((existingLic.data || []).map(l => [l.tipo, l.id]))

        const licUpserts = []
        for (const tipo of LICENCIAMENTOS_TIPOS) {
            const incoming = licenciamentosData.find(l => l.tipo === tipo)
            const rowId = existingMap.get(tipo)

            // Tratamento especial para DISPENSA DE LICENÇA x DISPENSA_LICENCA, etc se a UI enviar texto com espaço.
            // Aqui assumimos que a UI manda o enum exato: ARQUEOLOGIA, DISPENSA_LICENCA, etc.

            if (incoming) {
                if (rowId) {
                    licUpserts.push({
                        id: rowId,
                        ambiental_empreendimento_id: ambEmpId,
                        tipo: tipo,
                        status: incoming.status || '',
                        observacao: incoming.observacao || null
                    })
                } else {
                    licUpserts.push({
                        ambiental_empreendimento_id: ambEmpId,
                        tipo: tipo,
                        status: incoming.status || '',
                        observacao: incoming.observacao || null
                    })
                }
            } else {
                // Se a UI não enviou, inserimos vazio só pra ter o placeholder, ou não mexemos
                if (!rowId) {
                    licUpserts.push({
                        ambiental_empreendimento_id: ambEmpId,
                        tipo: tipo,
                        status: '',
                        observacao: null
                    })
                }
            }
        }

        if (licUpserts.length > 0) {
            const { error: licError } = await supabase
                .from('ambiental_licenciamentos')
                .upsert(licUpserts)

            if (licError) throw licError
        }

        revalidatePath(`/ambiental/${id}`)
        return { success: true }
    } catch (err: any) {
        console.error("Erro ao salvar dados ambientais:", err)
        return { success: false, error: err.message || "Erro interno ao salvar dados." }
    }
}

// Expõe a checagem de permissão para UI desabilitar edição
export async function canEditAmbiental() {
    const supabase = await createClient()
    const { allowed } = await checkPermission(supabase)
    return allowed
}

// Busca lista de empreendimentos para o vínculo
export async function getEmpreendimentosSelection() {
    const supabase = await createClient()
    const { data } = await supabase
        .from('empreendimentos')
        .select('id, nome')
        .order('nome', { ascending: true })
    return data || []
}
