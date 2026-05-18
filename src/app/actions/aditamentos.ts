"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

export interface AditamentoFormData {
    tipo_vinculo: "lote" | "empreendimento"
    lote_id?: string | null
    empreendimento_id: string
    contrato_id?: string | null
    tipos: Array<"valor" | "prazo">
    valor_estimado?: number | null
    prazo_meses?: number | null
    justificativa: string
    formalizado: boolean
    processo_sei?: string | null
    id_origem?: string | null
}

export interface Aditamento {
    id: string
    tipo_vinculo: "lote" | "empreendimento"
    lote_id: string | null
    empreendimento_id: string
    contrato_id: string | null
    tipos: string[]
    valor_estimado: number | null
    prazo_meses: number | null
    justificativa: string
    formalizado: boolean
    processo_sei: string | null
    id_origem: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

/**
 * Registra um novo aditamento e, se o tipo incluir 'prazo',
 * propaga automaticamente para os servicos vinculados ao contrato.
 */
export async function createAditamento(data: AditamentoFormData) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

    // Validações básicas
    if (!data.empreendimento_id) {
        return { success: false, error: "Empreendimento alvo é obrigatório." }
    }
    if (!data.tipos || data.tipos.length === 0) {
        return { success: false, error: "Selecione ao menos um tipo (Valor ou Prazo)." }
    }
    if (data.tipos.includes("valor") && (!data.valor_estimado || data.valor_estimado <= 0)) {
        return { success: false, error: "Informe o valor estimado para aditamento de valor." }
    }
    if (data.tipos.includes("prazo") && (!data.prazo_meses || data.prazo_meses <= 0)) {
        return { success: false, error: "Informe a quantidade de meses para aditamento de prazo." }
    }
    if (!data.justificativa?.trim()) {
        return { success: false, error: "A justificativa é obrigatória." }
    }
    if (data.formalizado && !data.processo_sei?.trim()) {
        return { success: false, error: "O número do processo SEI é obrigatório para aditamentos formalizados." }
    }

    const payload = {
        tipo_vinculo: data.tipo_vinculo,
        lote_id: data.lote_id || null,
        empreendimento_id: data.empreendimento_id,
        contrato_id: data.contrato_id || null,
        tipos: data.tipos,
        valor_estimado: data.tipos.includes("valor") ? data.valor_estimado : null,
        prazo_meses: data.tipos.includes("prazo") ? data.prazo_meses : null,
        justificativa: data.justificativa.trim(),
        formalizado: data.formalizado,
        processo_sei: data.formalizado ? data.processo_sei?.trim() : null,
        id_origem: data.id_origem || null,
    }

    const { error: insertError } = await supabase
        .from("aditamentos")
        .insert([payload])

    if (insertError) {
        console.error("[createAditamento]", insertError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    // ── Propagação de prazo para servicos ─────────────────────────────────────
    // Se o aditamento incluir prazo, soma os meses (como fração de anos) a TODOS
    // os serviços relacionados ao contrato aditado.
    if (data.tipos.includes("prazo") && data.prazo_meses && data.prazo_meses > 0 && data.contrato_id) {
        const anosAdicionais = data.prazo_meses / 12

        // Busca serviços vinculados ao contrato
        const { data: servicosDoContrato } = await supabase
            .from("servicos")
            .select("id, aditamento_anos")
            .eq("contrato_id", data.contrato_id)

        if (servicosDoContrato && servicosDoContrato.length > 0) {
            const updates = servicosDoContrato.map((s) => ({
                id: s.id,
                aditamento_anos: Math.round(((Number(s.aditamento_anos) || 0) + anosAdicionais) * 1000) / 1000,
                aditamento_formalizado: data.formalizado,
                updated_at: new Date().toISOString(),
            }))

            const { error: updateError } = await supabase
                .from("servicos")
                .upsert(updates, { onConflict: "id", ignoreDuplicates: false })

            if (updateError) {
                console.error("[createAditamento] Erro ao propagar prazo para servicos:", updateError)
                // Não falha o cadastro por causa disso — apenas loga
            }
        }
    }

    // Revalida as rotas relevantes
    revalidatePath("/lotes")
    revalidatePath("/empreendimentos")
    revalidatePath("/planejamento")
    if (data.lote_id) revalidatePath(`/lotes/${data.lote_id}`)
    revalidatePath(`/empreendimentos/${data.empreendimento_id}`)

    return { success: true }
}

/**
 * Busca todos os aditamentos de um lote específico,
 * incluindo aditamentos vinculados individualmente aos seus empreendimentos.
 */
export async function getAditamentosDoLote(loteId: string): Promise<Aditamento[]> {
    try {
        const supabase = await createClient()
        const { data: { user }, error: authError } = await supabase.auth.getUser()
        if (authError || !user) return []

        // Busca empreendimentos do lote
        const { data: emps } = await supabase
            .from("empreendimentos")
            .select("id")
            .eq("lote_id", loteId)

        const empIds = (emps || []).map(e => e.id)

        // IMPORTANTE: IDs de texto (como os da API 'api-123') precisam de aspas no .or()
        // O Supabase/PostgREST espera: or(lote_id.eq.UUID,empreendimento_id.in.("id1","id2"))
        const filterStr = `lote_id.eq.${loteId}${empIds.length > 0 ? `,empreendimento_id.in.("${empIds.join('","')}")` : ""}`

        const { data, error } = await supabase
            .from("aditamentos")
            .select("*")
            .or(filterStr)
            .order("created_at", { ascending: false })

        if (error) {
            console.error("[getAditamentosDoLote] Erro Supabase:", error)
            return []
        }
        return (data || []) as Aditamento[]
    } catch (err) {
        console.error("[getAditamentosDoLote] Erro inesperado:", err)
        return []
    }
}

/**
 * Busca todos os aditamentos de um empreendimento específico,
 * incluindo aditamentos vinculados ao lote ao qual ele pertence.
 */
export async function getAditamentosDoEmpreendimento(empreendimentoId: string): Promise<Aditamento[]> {
    try {
        const supabase = await createClient()
        const { data: { user }, error: authError } = await supabase.auth.getUser()
        if (authError || !user) return []

        // Busca o lote do empreendimento
        const { data: emp } = await supabase
            .from("empreendimentos")
            .select("lote_id")
            .eq("id", empreendimentoId)
            .single()

        const loteId = emp?.lote_id

        // Importante: Quote no empreendimentoId pois pode conter '-'
        const filterStr = `empreendimento_id.eq."${empreendimentoId}"${loteId ? `,lote_id.eq.${loteId}` : ""}`

        const { data, error } = await supabase
            .from("aditamentos")
            .select("*")
            .or(filterStr)
            .order("created_at", { ascending: false })

        if (error) {
            console.error("[getAditamentosDoEmpreendimento] Erro Supabase:", error)
            return []
        }
        return (data || []) as Aditamento[]
    } catch (err) {
        console.error("[getAditamentosDoEmpreendimento] Erro inesperado:", err)
        return []
    }
}

/**
 * Atualiza um aditamento existente.
 */
export async function updateAditamento(id: string, data: AditamentoFormData) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

    // 1. Validações básicas (iguais ao create)
    if (!data.empreendimento_id) {
        return { success: false, error: "Empreendimento alvo é obrigatório." }
    }
    if (!data.tipos || data.tipos.length === 0) {
        return { success: false, error: "Selecione ao menos um tipo (Valor ou Prazo)." }
    }
    if (data.tipos.includes("valor") && (data.valor_estimado === null || data.valor_estimado === undefined || data.valor_estimado < 0)) {
        return { success: false, error: "Informe o valor estimado para aditamento de valor." }
    }
    if (data.tipos.includes("prazo") && (data.prazo_meses === null || data.prazo_meses === undefined || data.prazo_meses < 0)) {
        return { success: false, error: "Informe a quantidade de meses para aditamento de prazo." }
    }
    if (!data.justificativa?.trim()) {
        return { success: false, error: "A justificativa é obrigatória." }
    }
    if (data.formalizado && !data.processo_sei?.trim()) {
        return { success: false, error: "O número do processo SEI é obrigatório para aditamentos formalizados." }
    }

    // 2. Buscar aditamento antigo para calcular diferença de prazo (se houver)
    const { data: antigo } = await supabase
        .from("aditamentos")
        .select("*")
        .eq("id", id)
        .single()

    if (!antigo) {
        return { success: false, error: "Aditamento não encontrado." }
    }

    const payload = {
        tipo_vinculo: data.tipo_vinculo,
        lote_id: data.lote_id || null,
        empreendimento_id: data.empreendimento_id,
        contrato_id: data.contrato_id || null,
        tipos: data.tipos,
        valor_estimado: data.tipos.includes("valor") ? data.valor_estimado : null,
        prazo_meses: data.tipos.includes("prazo") ? data.prazo_meses : null,
        justificativa: data.justificativa.trim(),
        formalizado: data.formalizado,
        processo_sei: data.formalizado ? data.processo_sei?.trim() : null,
        updated_at: new Date().toISOString()
    }

    const { error: updateError } = await supabase
        .from("aditamentos")
        .update(payload)
        .eq("id", id)

    if (updateError) {
        console.error("[updateAditamento]", updateError)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    // 3. Propagação de diferença de prazo para servicos
    if (data.contrato_id) {
        const prazoAntigoMeses = antigo.prazo_meses || 0
        const prazoNovoMeses = data.tipos.includes("prazo") ? (data.prazo_meses || 0) : 0
        const diferencaMeses = prazoNovoMeses - prazoAntigoMeses

        if (diferencaMeses !== 0) {
            const diferencaAnos = diferencaMeses / 12

            const { data: servicos } = await supabase
                .from("servicos")
                .select("id, aditamento_anos")
                .eq("contrato_id", data.contrato_id)

            if (servicos && servicos.length > 0) {
                const servicosUpdates = servicos.map(s => ({
                    id: s.id,
                    aditamento_anos: Math.round(((Number(s.aditamento_anos) || 0) + diferencaAnos) * 1000) / 1000,
                    aditamento_formalizado: data.formalizado,
                    updated_at: new Date().toISOString()
                }))

                await supabase.from("servicos").upsert(servicosUpdates)
            }
        }
    }

    revalidatePath("/lotes")
    revalidatePath("/empreendimentos")
    revalidatePath("/planejamento")
    if (data.lote_id) revalidatePath(`/lotes/${data.lote_id}`)
    revalidatePath(`/empreendimentos/${data.empreendimento_id}`)

    return { success: true }
}

/**
 * Remove um aditamento pelo ID.
 */
export async function deleteAditamento(id: string, paths: string[] = []) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }
    const { error } = await supabase
        .from("aditamentos")
        .delete()
        .eq("id", id)

    if (error) {
        console.error("[deleteAditamento]", error)
        return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath("/lotes")
    revalidatePath("/empreendimentos")
    paths.forEach((p) => revalidatePath(p))
    return { success: true }
}

/**
 * Importa aditamentos legados da API SPObras para um contrato específico.
 */
export async function importLegacyAditamentos(
    contratoId: string,
    empreendimentoId?: string | null,
    loteId?: string | null
) {
    const supabase = await createClient()
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }
    const { getContratos, getContratoAditamentos } = await import("@/lib/api-client")

    try {
        // 1. Obter o contrato para pegar o _originalId
        const allContratos = await getContratos(supabase)
        const contrato = allContratos.find((c: any) => c.id === contratoId)

        if (!contrato || !contrato._originalId) {
            return { success: false, error: "Contrato não encontrado ou sem vínculo com a API SPObras." }
        }

        // 1b. Se não temos empreendimentoId mas temos loteId, tentamos pegar o primeiro do lote
        let targetEmpId = empreendimentoId
        if (!targetEmpId && loteId) {
            const { data: emps } = await supabase.from("empreendimentos").select("id").eq("lote_id", loteId).limit(1)
            if (emps && emps.length > 0) {
                targetEmpId = emps[0].id
            }
        }

        // Se ainda não temos nada (ex: contrato solo), tentamos pegar qualquer um vinculado ao contrato
        if (!targetEmpId) {
            const { data: links } = await supabase.from("empreendimento_contrato").select("empreendimento_id").eq("contrato_id", contratoId).limit(1)
            if (links && links.length > 0) {
                targetEmpId = links[0].empreendimento_id
            }
        }

        if (!targetEmpId) {
            return { success: false, error: "Não foi possível identificar um empreendimento alvo para vincular o aditamento." }
        }

        // 2. Buscar aditamentos na API
        const legacyAditamentos = await getContratoAditamentos(supabase, contrato._originalId)
        if (!legacyAditamentos || legacyAditamentos.length === 0) {
            return { success: true, count: 0, message: "Nenhum aditamento encontrado na API para este contrato." }
        }

        // 3. Mapear os registros a importar
        const aditamentosToInsert = legacyAditamentos.map((apiAdit: any) => ({
            id_origem: `api-${apiAdit.idAditamento}`,
            tipo_vinculo: loteId ? "lote" : "empreendimento",
            lote_id: loteId || null,
            empreendimento_id: targetEmpId,
            contrato_id: contratoId,
            tipos: ["valor"],
            valor_estimado: apiAdit.vlAditado || 0,
            prazo_meses: null,
            justificativa: `[IMPORTADO API] Termo: ${apiAdit.nrAditamento || "S/N"} de ${apiAdit.dtAditamento ? new Date(apiAdit.dtAditamento).toLocaleDateString("pt-BR") : "?"}. ${apiAdit.nmObservacao || ""}`.trim(),
            formalizado: true,
            processo_sei: null,
        }))

        // 4. Buscar quais id_origem já existem (evitar duplicatas sem depender de constraint DB)
        const origensParaImportar = aditamentosToInsert.map(a => a.id_origem)
        const { data: existentes } = await supabase
            .from("aditamentos")
            .select("id_origem")
            .in("id_origem", origensParaImportar)

        const origensExistentes = new Set((existentes || []).map((e: any) => e.id_origem))
        const novos = aditamentosToInsert.filter(a => !origensExistentes.has(a.id_origem))

        if (novos.length === 0) {
            return { success: true, count: 0, message: "Todos os aditamentos já foram importados anteriormente." }
        }

        const { error: insertError } = await supabase
            .from("aditamentos")
            .insert(novos)

        if (insertError) {
            console.error("[importLegacyAditamentos]", insertError)
            return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
        }

        // Revalida as rotas
        revalidatePath("/lotes")
        revalidatePath("/empreendimentos")
        if (loteId) revalidatePath(`/lotes/${loteId}`)
        revalidatePath(`/empreendimentos/${empreendimentoId}`)

        return { success: true, count: novos.length }
    } catch (err: any) {
        console.error("[importLegacyAditamentos] Erro inesperado:", err)
        return { success: false, error: err.message || "Erro desconhecido ao importar." }
    }
}
