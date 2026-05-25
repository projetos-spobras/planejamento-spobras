"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import fs from "fs"

const LICENCIAMENTOS_TIPOS = [
    'ARQUEOLOGIA', 'DAEE', 'DISPENSA_LICENCA', 'AREAS_CONTAMINADAS', 
    'TCA', 'PLANTIO', 'EVA', 'EIA_RIMA', 'LAP', 'LAI', 'LAO'
]

// Busca dados ambientais por ID do registro ambiental
export async function getAmbientalData(id: string) {
    const supabase = await createClient()
    const logData: any = { id, timestamp: new Date().toISOString() }

    const writeLog = () => {
        try {
            fs.writeFileSync(
                "c:/Users/x437719/Downloads/planejamento-spobras/debug_ambiental.log",
                JSON.stringify(logData, null, 2)
            )
        } catch (e) {}
    }


    // 1. Verificar se o ID fornecido é de um serviço ou de um empreendimento
    let servico: any = null
    let empreendimentoInfo: any = null
    let empreendimentoId: string | null = null
    let isSemEmp = false
    let servicoSemEmpId: string | null = null

    // Tenta buscar como serviço primeiro
    const { data: servObj } = await supabase
        .from('servicos')
        .select('*, empreendimento:empreendimentos(id, nome)')
        .eq('id', id)
        .maybeSingle()

    if (servObj) {
        servico = servObj
        empreendimentoId = servObj.empreendimento_id || null
        if (servObj.empreendimento) {
            empreendimentoInfo = servObj.empreendimento
        }
        
        // Se o serviço não tem empreendimento direto, tenta resolver via contrato
        if (!empreendimentoId && servObj.contrato_id) {
            const { data: ecLink } = await supabase
                .from('empreendimentos_contratos')
                .select('empreendimento_id, empreendimentos(id, nome)')
                .eq('contrato_id', servObj.contrato_id)
                .limit(1)
                .maybeSingle()

            if (ecLink?.empreendimento_id) {
                empreendimentoId = ecLink.empreendimento_id
                empreendimentoInfo = ecLink.empreendimentos
            }
        }
        
        if (!empreendimentoId) {
            isSemEmp = true
            servicoSemEmpId = servObj.id
            empreendimentoInfo = {
                id: `sem-emp-${servObj.id}`,
                nome: 'Sem Empreendimento Vinculado',
                codigo: ''
            }
        }
    } else {
        // Se não for serviço, busca como empreendimento
        const { data: empObj, error: empError } = await supabase
            .from('empreendimentos')
            .select('*')
            .eq('id', id)
            .maybeSingle()

        if (empError || !empObj) {
            console.error("Erro ao buscar por ID (não é serviço nem empreendimento):", id, empError)
            return null
        }
        empreendimentoInfo = empObj
        empreendimentoId = empObj.id
    }

    // Se a busca foi por empreendimento, vamos pegar o primeiro serviço ambiental dele para preencher o formulário principal,
    // ou manter vazio se não houver nenhum serviço cadastrado ainda.
    let targetServicoId = servico?.id || null

    if (!targetServicoId && empreendimentoId) {
        // Busca o primeiro serviço ambiental deste empreendimento para servir de referência
        const { data: empContratos } = await supabase
            .from('empreendimentos_contratos')
            .select('contrato_id')
            .eq('empreendimento_id', empreendimentoId)
        
        const contratoIds = (empContratos || []).map((c: any) => c.contrato_id)

        let firstServQuery = supabase
            .from('servicos')
            .select('id')
            .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])
            .order('created_at', { ascending: true })
            .limit(1)

        if (contratoIds.length > 0) {
            firstServQuery = firstServQuery.or(`empreendimento_id.eq.${empreendimentoId},contrato_id.in.(${contratoIds.join(',')})`)
        } else {
            firstServQuery = firstServQuery.eq('empreendimento_id', empreendimentoId)
        }

        const { data: firstServ } = await firstServQuery.maybeSingle()
        if (firstServ) {
            targetServicoId = firstServ.id
        }
    }

    // 2. Buscar em ambiental_detalhes pelo targetServicoId
    let detalhesData = {
        id: targetServicoId || id,
        servico_id: targetServicoId,
        tecnico_gma: null,
        gestor: null,
        fiscal: null,
        gerencia: null,
        contratada: null,
        contrato_spobras: null,
        contrato_siurb: null,
        sei_processo: null,
        programa: null,
        estagio: 0,
        status: 'Não Iniciado',
        prazo: null,
        valor_contrato: 0,
        valor_medido: 0,
        percentual_conclusao: 0,
        tem_empenho: false,
        updated_at: new Date().toISOString()
    }

    if (targetServicoId) {
        const { data: detObj } = await supabase
            .from('ambiental_detalhes')
            .select('*')
            .eq('servico_id', targetServicoId)
            .maybeSingle()
        if (detObj) {
            detalhesData = detObj
        }
    }

    // 3. Buscar os licenciamentos por targetServicoId
    let licenciamentosData: any[] = []
    if (targetServicoId) {
        const { data: licData } = await supabase
            .from('ambiental_licenciamentos')
            .select('*')
            .eq('servico_id', targetServicoId)
        if (licData) {
            licenciamentosData = licData
        }
    }

    // 5. Buscar todos os serviços ambientais do mesmo empreendimento
    let servicosAmbientais: any[] = []
    let servData: any[] = []

    if (empreendimentoId) {
        // Busca por empreendimento_id direto + por contratos vinculados ao mesmo empreendimento
        const { data: contratosDoEmp } = await supabase
            .from('empreendimentos_contratos')
            .select('contrato_id')
            .eq('empreendimento_id', empreendimentoId)

        const contratoIdsDoEmp = (contratosDoEmp || []).map((ec: any) => ec.contrato_id)

        // Query principal: busca por empreendimento_id OU por contrato_id vinculado
        const { data: byEmp, error: errByEmp } = await supabase
            .from('servicos')
            .select(`
                *,
                contratos(numero)
            `)
            .eq('empreendimento_id', empreendimentoId)
            .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])
            .order('created_at', { ascending: true })

        logData.contratoIdsDoEmp = contratoIdsDoEmp
        logData.errByEmp = errByEmp
        logData.byEmp = byEmp

        if (byEmp) servData = [...byEmp]

        if (contratoIdsDoEmp.length > 0) {
            const { data: byContrato, error: errByContrato } = await supabase
                .from('servicos')
                .select(`
                    *,
                    contratos(numero)
                `)
                .in('contrato_id', contratoIdsDoEmp)
                .in('tipo', ['Ambiental', 'SERVIÇOS AMBIENTAIS'])
                .order('created_at', { ascending: true })

            logData.errByContrato = errByContrato
            logData.byContrato = byContrato

            if (byContrato) {
                // Deduplicar por id
                const existingIds = new Set(servData.map((s: any) => s.id))
                byContrato.forEach((s: any) => {
                    if (!existingIds.has(s.id)) servData.push(s)
                })
            }
        }
    } else if (isSemEmp && servicoSemEmpId) {
        const { data: byServId } = await supabase
            .from('servicos')
            .select(`
                *,
                contratos(numero)
            `)
            .eq('id', servicoSemEmpId)

        if (byServId) servData = [...byServId]
    }

    if (servData.length > 0) {
            const allServIds = servData.map((s: any) => s.id)
            
            // Buscar licenciamentos (resiliente)
            let licsMap = new Map<string, any[]>()
            const { data: licsAll, error: licsAllErr } = await supabase
                .from('ambiental_licenciamentos')
                .select('*')
                .in('servico_id', allServIds)
            if (!licsAllErr && licsAll) {
                licsAll.forEach((l: any) => {
                    if (l.servico_id) {
                        const arr = licsMap.get(l.servico_id) || []
                        arr.push(l)
                        licsMap.set(l.servico_id, arr)
                    }
                })
            }

            // Buscar detalhes ambientais (resiliente)
            let detMap = new Map<string, any>()
            const { data: detsAll, error: detsAllErr } = await supabase
                .from('ambiental_detalhes')
                .select('*')
                .in('servico_id', allServIds)
            if (!detsAllErr && detsAll) {
                detsAll.forEach((d: any) => {
                    if (d.servico_id) detMap.set(d.servico_id, d)
                })
            }

            servicosAmbientais = servData.map((s: any) => ({
                ...s,
                ambiental_licenciamentos: licsMap.get(s.id) || [],
                ambiental_detalhes: detMap.get(s.id) || null,
            }))
        }

    // 6. Buscar os comentários da tabela ambiental_comentarios
    let comentariosData: any[] = []
    const { data: comData, error: comError } = await supabase
        .from('ambiental_comentarios')
        .select(`
            id,
            texto,
            created_at,
            autor:profiles(full_name, email)
        `)
        .eq('servico_id', id)
        .order('created_at', { ascending: true })

    if (!comError && comData) {
        comentariosData = comData.map(c => ({
            id: c.id,
            created_at: c.created_at,
            texto: c.texto,
            autor: {
                nome_completo: (c.autor as any)?.full_name || 'Usuário',
                email: (c.autor as any)?.email || ''
            }
        }))
    }

    logData.empreendimentoId = empreendimentoId
    logData.empreendimentoInfo = empreendimentoInfo
    logData.targetServicoId = targetServicoId
    logData.servDataCount = servData ? servData.length : 0
    logData.servDataIds = servData ? servData.map(s => s.id) : []
    logData.servicosAmbientaisCount = servicosAmbientais.length
    logData.servicosAmbientais = servicosAmbientais

    writeLog()

    return {
        empreendimento: {
            ...detalhesData,
            empreendimento_id: empreendimentoId,
            nome_empreendimento: empreendimentoInfo.nome,
            empreendimento: { id: empreendimentoId, nome: empreendimentoInfo.nome },
            observacoes: ""
        },
        licenciamentos: licenciamentosData,
        servicosAmbientais: servicosAmbientais,
        comentarios: comentariosData
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
    servicoId: string, // id do servico na tabela servicos
    ambientalEmpData: any, // dados do form
    licenciamentosData: any[], // grid de licenciamentos
    novaObservacao: string // texto para append-only de comentário
) {
    const supabase = await createClient()
    
    // 1. Valida permissão
    const { allowed, profile } = await checkPermission(supabase)
    if (!allowed) {
        return { success: false, error: "Apenas usuários do perfil Admin ou GMA podem editar esses dados." }
    }

    try {
        // 2. Tenta encontrar se já existe o registro em ambiental_detalhes para o servicoId
        const { data: existingDet } = await supabase
            .from('ambiental_detalhes')
            .select('id')
            .eq('servico_id', servicoId)
            .maybeSingle()

        const payloadToSave = {
            tecnico_gma: ambientalEmpData.tecnico_gma || null,
            gerencia: ambientalEmpData.gerencia || null,
            contratada: ambientalEmpData.contratada || null,
            contrato_spobras: ambientalEmpData.contrato_spobras || null,
            contrato_siurb: ambientalEmpData.contrato_siurb || null,
            sei_processo: ambientalEmpData.sei_processo || null,
            status: ambientalEmpData.status || null,
            estagio: ambientalEmpData.estagio !== undefined && ambientalEmpData.estagio !== "" ? Number(ambientalEmpData.estagio) : null,
            tem_empenho: ambientalEmpData.tem_empenho || false,
            gestor: ambientalEmpData.gestor || null,
            fiscal: ambientalEmpData.fiscal || null,
            prazo: ambientalEmpData.prazo || null,
            valor_contrato: ambientalEmpData.valor_contrato || 0,
            valor_medido: ambientalEmpData.valor_medido || 0,
            percentual_conclusao: ambientalEmpData.percentual_conclusao || 0,
            programa: ambientalEmpData.programa || null
        }

        if (existingDet) {
            // Update
            const { error: upError } = await supabase
                .from('ambiental_detalhes')
                .update(payloadToSave)
                .eq('servico_id', servicoId)
            
            if (upError) throw upError
        } else {
            // Insert
            const { error: insError } = await supabase
                .from('ambiental_detalhes')
                .insert({
                    servico_id: servicoId,
                    ...payloadToSave
                })
            
            if (insError) throw insError
        }

        // 3. Processa e insere comentário se houver
        if (novaObservacao && novaObservacao.trim() !== "") {
            const { error: comError } = await supabase
                .from('ambiental_comentarios')
                .insert({
                    servico_id: servicoId,
                    autor_id: (await supabase.auth.getUser()).data.user?.id,
                    texto: novaObservacao.trim(),
                    mencoes: []
                })
            
            if (comError) throw comError
        }

        // 4. Salva Grid de Licenciamentos
        const existingLic = await supabase
            .from('ambiental_licenciamentos')
            .select('id, tipo')
            .eq('servico_id', servicoId)

        const existingMap = new Map((existingLic.data || []).map(l => [l.tipo, l.id]))

        const licUpserts = []
        for (const tipo of LICENCIAMENTOS_TIPOS) {
            const incoming = licenciamentosData.find(l => l.tipo === tipo)
            const rowId = existingMap.get(tipo)

            if (incoming) {
                licUpserts.push({
                    id: rowId || undefined,
                    servico_id: servicoId,
                    tipo: tipo,
                    status: incoming.status || '',
                    observacao: incoming.observacao || null
                })
            } else if (!rowId) {
                licUpserts.push({
                    servico_id: servicoId,
                    tipo: tipo,
                    status: '',
                    observacao: null
                })
            }
        }

        if (licUpserts.length > 0) {
            const { error: licError } = await supabase
                .from('ambiental_licenciamentos')
                .upsert(licUpserts)

            if (licError) throw licError
        }

        // 5. Sincronização Bidirecional (Ambiental -> Serviços)
        const { data: currentServico } = await supabase
            .from('servicos')
            .select('empreendimento_id')
            .eq('id', servicoId)
            .single()

        if (currentServico) {
            let servicoStatus = 'Andamento'
            if (payloadToSave.status) {
                const statusLower = payloadToSave.status.toLowerCase()
                if (statusLower.includes('concl') || statusLower.includes('final') || statusLower.includes('encerr')) {
                    servicoStatus = 'Concluído'
                } else if (statusLower.includes('susp')) {
                    servicoStatus = 'Suspenso'
                } else if (statusLower.includes('licit')) {
                    servicoStatus = 'Licitado'
                }
            }

            let contratoIdToUpdate: string | null = undefined
            if (payloadToSave.contrato_spobras) {
                const { data: matchingContrato } = await supabase
                    .from('contratos')
                    .select('id')
                    .ilike('numero', `%${payloadToSave.contrato_spobras}%`)
                    .limit(1)
                    .maybeSingle()

                if (matchingContrato) {
                    contratoIdToUpdate = matchingContrato.id
                }
            }

            const servicoUpdatePayload: any = {
                valor_total: payloadToSave.valor_contrato,
                data_fim: payloadToSave.prazo,
                status: servicoStatus
            }

            if (contratoIdToUpdate !== undefined) {
                servicoUpdatePayload.contrato_id = contratoIdToUpdate
            }

            await supabase
                .from('servicos')
                .update(servicoUpdatePayload)
                .eq('id', servicoId)
        }

        revalidatePath("/ambiental")
        revalidatePath(`/ambiental/${servicoId}`)
        if (currentServico?.empreendimento_id) {
            revalidatePath(`/empreendimentos/${currentServico.empreendimento_id}`)
        }
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
