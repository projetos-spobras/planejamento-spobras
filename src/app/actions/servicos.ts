
"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"
import { Servico } from "@/types"

export async function getServicosByEmpreendimento(empreendimentoId: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return []
    // First get linked contracts
    // We assume there is a relationship table or logic. Based on EmpreendimentoDetails, lets check how it gets contracts.
    // It seems it passes `contratosVinculados`. 
    // We can do a join: servicos -> contratos -> empreendimento_contratos (or similar).

    // Instead of complex join here without knowing the exact link table name (it was implied to be `empreendimento_contratos` or similar in previous context, but let's be safe), 
    // we can fetch by contract_id list if we had it, but for a general getter we need the link.
    // Let's assume the link table is `empreendimento_contratos`.

    const { data, error } = await supabase
        .from("servicos")
        .select(`
            *,
            contratos!inner (
                id,
                numero,
                empreendimento_contratos!inner (
                    empreendimento_id
                )
            )
        `)
        .eq("contratos.empreendimento_contratos.empreendimento_id", empreendimentoId)
        .order("ordem", { ascending: true })
        .order("created_at", { ascending: false })

    if (error) {
        console.error("[getServicosByEmpreendimento]", error)
        return []
    }

    return data as any[]
}

export async function getServicosByEmpreendimentoId(empreendimentoId: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { data: [] }
    // We need to find the Contracts linked to this Empreendimento.
    // Assuming table `empreendimento_contratos`.
    const { data: links } = await supabase
        .from('empreendimento_contratos')
        .select('contrato_id')
        .eq('empreendimento_id', empreendimentoId)

    if (!links || links.length === 0) return []

    const contratoIds = links.map(l => l.contrato_id)

    const { data: servicos, error } = await supabase
        .from('servicos')
        .select(`*, contrato:contratos(numero, contratada)`)
        .in('contrato_id', contratoIds)
        .order('ordem', { ascending: true })
        .order('created_at', { ascending: false })

    if (error) {
        console.error("[getServicosByEmpreendimentoId]", error)
        return { data: [] }
    }

    return { data: servicos }
}

export async function createServico(data: Partial<Servico>) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const { licencas, ...sanitizedData } = data as any

    const sanitized = {
        ...sanitizedData,
        data_inicio: data.data_inicio === "" ? null : data.data_inicio,
        data_fim: data.data_fim === "" ? null : data.data_fim,
        duracao_dias: data.duracao_dias ?? null,
        ordem: data.ordem ?? Math.floor(Date.now() / 1000)
    }

    const { data: inserted, error } = await supabase
        .from("servicos")
        .insert(sanitized)
        .select('id')
        .single()

    if (error) {
        return { success: false, error: error.message }
    }
    // --- SINCRONIZAÇÃO BIDIRECIONAL (Serviços -> Ambiental) ---
    if (data.tipo === "Ambiental" || data.tipo === "SERVIÇOS AMBIENTAIS") {
        try {
            let ambStatus = 'Em andamento'
            if (sanitized.status === 'Concluído') {
                ambStatus = 'Concluído'
            } else if (sanitized.status === 'Suspenso') {
                ambStatus = 'Suspenso'
            } else if (sanitized.status === 'Planejado' || sanitized.status === 'Licitado') {
                ambStatus = 'À licitar'
            } else if (sanitized.status === 'Cancelado') {
                ambStatus = 'Suspenso'
            }

            let contratoNumero: string | null = null
            let contratadaNome: string | null = null
            if (sanitized.contrato_id) {
                const { data: contratoData } = await supabase
                    .from('contratos')
                    .select('numero, contratada')
                    .eq('id', sanitized.contrato_id)
                    .maybeSingle()
                if (contratoData) {
                    contratoNumero = contratoData.numero
                    contratadaNome = contratoData.contratada
                }
            }

            const ambPayload: any = {
                valor_contrato: sanitized.valor_total || null,
                prazo: sanitized.data_fim || null,
                status: ambStatus
            }

            if (contratoNumero) ambPayload.contrato_spobras = contratoNumero
            if (contratadaNome) ambPayload.contratada = contratadaNome

            // Verificar se já existe registro em ambiental_detalhes para este servico_id
            const { data: existingAmb } = await supabase
                .from('ambiental_detalhes')
                .select('id')
                .eq('servico_id', inserted.id)
                .limit(1)
                .maybeSingle()

            if (existingAmb) {
                await supabase
                    .from('ambiental_detalhes')
                    .update(ambPayload)
                    .eq('id', existingAmb.id)
            } else {
                ambPayload.servico_id = inserted.id
                await supabase
                    .from('ambiental_detalhes')
                    .insert(ambPayload)
            }
        } catch (syncErr: any) {
            console.error('[createServico] Falha na sincronização bidirecional:', syncErr.message)
        }
    }

    // Inserir licenciamentos ambientais marcados
    if ((data.tipo === "Ambiental" || data.tipo === "SERVIÇOS AMBIENTAIS") && licencas && licencas.length > 0) {
        const licPayloads = licencas.map((tipo: string) => ({
            servico_id: inserted.id,
            tipo,
            status: null
        }))

        const { error: licError } = await supabase
            .from("ambiental_licenciamentos")
            .insert(licPayloads)

        if (licError) {
            console.error('[createServico] Falha ao criar licenciamentos ambientais:', licError.message)
        }
    }

    // [P3] Sincronização com Planejamento — melhor esforço, não bloqueia o serviço
    let planWarning = false
    if (sanitized.empreendimento_id && sanitized.descricao) {
        let data_fim = sanitized.data_fim || null
        if (!data_fim && sanitized.data_inicio && sanitized.duracao_dias !== undefined && sanitized.duracao_dias !== null) {
            const endDate = new Date(sanitized.data_inicio)
            endDate.setDate(endDate.getDate() + sanitized.duracao_dias)
            data_fim = endDate.toISOString().split('T')[0]
        }

        const subtipos = sanitized.subtipo_ambiental || []
        
        if (subtipos.length > 0) {
            // Cria uma linha para cada subtipo ambiental
            const planPayloads = subtipos.map((sub: string, index: number) => ({
                empreendimento_id: sanitized.empreendimento_id,
                fase: `${sub} - ${sanitized.descricao}`.substring(0, 255),
                tipo_fase: 'execução',
                // Atribui o valor total apenas à primeira linha para não triplicar o financeiro se não houver divisão
                valor_planejado: index === 0 ? (sanitized.valor_total || 0) : 0, 
                data_inicio: sanitized.data_inicio || null,
                data_fim: data_fim,
                servico_id: inserted?.id || null
            }))

            const { error: planError } = await supabase
                .from("planejamento_fases")
                .insert(planPayloads)

            if (planError) {
                planWarning = true
                console.error('[createServico] Falha ao criar fases ambientais:', planError.message)
            }
        } else {
            // Comportamento padrão (uma única linha)
            const { error: planError } = await supabase
                .from("planejamento_fases")
                .insert({
                    empreendimento_id: sanitized.empreendimento_id,
                    fase: sanitized.descricao.length > 255 ? sanitized.descricao.substring(0, 252) + "..." : sanitized.descricao,
                    tipo_fase: 'execução',
                    valor_planejado: sanitized.valor_total || 0,
                    data_inicio: sanitized.data_inicio || null,
                    data_fim: data_fim,
                    servico_id: inserted?.id || null
                })

            if (planError) {
                planWarning = true
                console.error('[createServico] Falha ao criar fase de planejamento:', planError.message)
            }
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath("/servicos")
    revalidatePath("/ambiental")
    revalidatePath(`/empreendimentos/${sanitized.empreendimento_id}`)
    return { success: true, planWarning }
}

export async function createServiceBatch(empreendimentoIds: string[], data: Partial<Servico>) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const sanitizedData = {
        ...data,
        data_inicio: data.data_inicio === "" ? null : data.data_inicio,
        data_fim: data.data_fim === "" ? null : data.data_fim,
        duracao_dias: data.duracao_dias ?? null,
        ordem: data.ordem ?? Math.floor(Date.now() / 1000)
    }

    const payloads = empreendimentoIds.map(empId => ({
        ...sanitizedData,
        empreendimento_id: empId,
        contrato_id: null
    }))

    const { data: insertedServices, error } = await supabase
        .from("servicos")
        .insert(payloads)
        .select('id, empreendimento_id')

    if (error) {
        return { success: false, error: error.message }
    }

    // [P3] Sincronização com Planejamento — melhor esforço, não bloqueia
    let planWarning = false
    if (data.descricao && insertedServices) {
        let data_fim = data.data_fim || null
        if (!data_fim && data.data_inicio && data.duracao_dias !== undefined && data.duracao_dias !== null) {
            const endDate = new Date(data.data_inicio)
            endDate.setDate(endDate.getDate() + data.duracao_dias)
            data_fim = endDate.toISOString().split('T')[0]
        }

        const subtipos = data.subtipo_ambiental || []
        const planPayloads: any[] = []

        insertedServices.forEach(insertedService => {
            if (subtipos.length > 0) {
                subtipos.forEach((sub: string, index: number) => {
                    planPayloads.push({
                        empreendimento_id: insertedService.empreendimento_id,
                        fase: `${sub} - ${data.descricao}`.substring(0, 255),
                        tipo_fase: 'execução',
                        valor_planejado: index === 0 ? (data.valor_total || 0) : 0,
                        data_inicio: data.data_inicio || null,
                        data_fim: data_fim,
                        servico_id: insertedService.id
                    })
                })
            } else {
                planPayloads.push({
                    empreendimento_id: insertedService.empreendimento_id,
                    fase: data.descricao!.length > 255 ? data.descricao!.substring(0, 252) + "..." : data.descricao,
                    tipo_fase: 'execução',
                    valor_planejado: data.valor_total || 0,
                    data_inicio: data.data_inicio || null,
                    data_fim: data_fim,
                    servico_id: insertedService.id
                })
            }
        })

        const { error: planError } = await supabase
            .from("planejamento_fases")
            .insert(planPayloads)

        if (planError) {
            planWarning = true
            console.error('[createServiceBatch] Falha ao criar fases de planejamento:', planError.message)
        }
    }

    revalidatePath("/empreendimentos")
    revalidatePath("/servicos")
    revalidatePath("/ambiental")
    return { success: true, planWarning }
}

export async function updateServico(id: string, data: Partial<Servico>) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    const sanitized = {
        ...data
    }
    
    if (data.data_inicio === "") sanitized.data_inicio = null
    if (data.data_fim === "") sanitized.data_fim = null
    if (data.duracao_dias === undefined && data.duracao_dias !== null) delete (sanitized as any).duracao_dias
    
    // Garantir que subtipos só sejam atualizados se enviados (explicitamente ou como array vazio/null)
    if (data.subtipo_ambiental === undefined) delete (sanitized as any).subtipo_ambiental
    if (data.subtipo_receita === undefined) delete (sanitized as any).subtipo_receita

    // Remover campo auxiliar de licenças do payload da tabela principal
    const { licencas } = data as any
    delete (sanitized as any).licencas

    const { error } = await supabase
        .from("servicos")
        .update(sanitized)
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    // Atualizar licenciamentos ambientais
    if (licencas !== undefined) {
        const { error: deleteError } = await supabase
            .from("ambiental_licenciamentos")
            .delete()
            .eq("servico_id", id)

        if (deleteError) {
            console.error("[updateServico] Falha ao limpar licenciamentos ambientais:", deleteError.message)
        }

        if ((data.tipo === "Ambiental" || data.tipo === "SERVIÇOS AMBIENTAIS") && licencas && licencas.length > 0) {
            const licPayloads = licencas.map((tipo: string) => ({
                servico_id: id,
                tipo,
                status: null
            }))

            const { error: licError } = await supabase
                .from("ambiental_licenciamentos")
                .insert(licPayloads)

            if (licError) {
                console.error("[updateServico] Falha ao criar licenciamentos ambientais:", licError.message)
            }
        }
    }

    // --- SINCRONIZAÇÃO BIDIRECIONAL (Serviços -> Ambiental) ---
    try {
        const { data: servicoCompleto } = await supabase
            .from('servicos')
            .select('*')
            .eq('id', id)
            .maybeSingle()

        if (servicoCompleto && (servicoCompleto.tipo === "Ambiental" || servicoCompleto.tipo === "SERVIÇOS AMBIENTAIS")) {
            let ambStatus = 'Em andamento'
            if (servicoCompleto.status === 'Concluído') {
                ambStatus = 'Concluído'
            } else if (servicoCompleto.status === 'Suspenso') {
                ambStatus = 'Suspenso'
            } else if (servicoCompleto.status === 'Planejado' || servicoCompleto.status === 'Licitado') {
                ambStatus = 'À licitar'
            } else if (servicoCompleto.status === 'Cancelado') {
                ambStatus = 'Suspenso'
            }

            let contratoNumero: string | null = null
            let contratadaNome: string | null = null
            if (servicoCompleto.contrato_id) {
                const { data: contratoData } = await supabase
                    .from('contratos')
                    .select('numero, contratada')
                    .eq('id', servicoCompleto.contrato_id)
                    .maybeSingle()
                if (contratoData) {
                    contratoNumero = contratoData.numero
                    contratadaNome = contratoData.contratada
                }
            }

            const ambPayload: any = {
                valor_contrato: servicoCompleto.valor_total || null,
                prazo: servicoCompleto.data_fim || null,
                status: ambStatus
            }

            if (contratoNumero) ambPayload.contrato_spobras = contratoNumero
            if (contratadaNome) ambPayload.contratada = contratadaNome

            // Verificar se já existe registro em ambiental_detalhes para este servico_id
            const { data: existingAmb } = await supabase
                .from('ambiental_detalhes')
                .select('id')
                .eq('servico_id', id)
                .limit(1)
                .maybeSingle()

            if (existingAmb) {
                await supabase
                    .from('ambiental_detalhes')
                    .update(ambPayload)
                    .eq('id', existingAmb.id)
            } else {
                ambPayload.servico_id = id
                await supabase
                    .from('ambiental_detalhes')
                    .insert(ambPayload)
            }
        }
    } catch (syncErr: any) {
        console.error('[updateServico] Falha na sincronização bidirecional:', syncErr.message)
    }

    revalidatePath("/empreendimentos")
    revalidatePath("/servicos")
    revalidatePath("/ambiental")
    
    // Buscar o empreendimento_id para revalidação específica se não estiver no payload
    if (data.empreendimento_id) {
        revalidatePath(`/empreendimentos/${data.empreendimento_id}`)
    } else {
        const { data: s } = await supabase.from("servicos").select("empreendimento_id").eq("id", id).single()
        if (s?.empreendimento_id) revalidatePath(`/empreendimentos/${s.empreendimento_id}`)
    }

    return { success: true }
}

export async function deleteServico(id: string) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }
    const { error } = await supabase
        .from("servicos")
        .delete()
        .eq("id", id)

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    return { success: true }
}

export async function updateServicoOrder(orders: { id: string, ordem: number }[]) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { success: false, error: 'Não autorizado' }

    // Loop through and update each one individually to avoid constraint violations with upsert
    const updates = orders.map(async (o) => {
        return supabase
            .from("servicos")
            .update({ ordem: o.ordem })
            .eq("id", o.id)
    })

    const results = await Promise.all(updates)
    const error = results.find(r => r.error)?.error

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    return { success: true }
}
