
"use server"

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

export async function linkContratoToEmpreendimento(
    empreendimentoId: string,
    contratoId: string,
    loteId?: string | null
) {
    const supabase = await createClient()
    const { error } = await supabase
        .from("empreendimentos_contratos")
        .insert({
            empreendimento_id: empreendimentoId,
            contrato_id: contratoId,
            lote_id: loteId || null,
        })

    if (error) {
        if (error.code === '23505') { // Unique violation
            return { success: false, error: "Este contrato já está vinculado a este empreendimento." }
        }
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    revalidatePath("/contratos")
    revalidatePath(`/contratos/${contratoId}`)

    return { success: true }
}

export async function unlinkContratoFromEmpreendimento(
    empreendimentoId: string,
    contratoId: string
) {
    const supabase = await createClient()
    const { error } = await supabase
        .from("empreendimentos_contratos")
        .delete()
        .match({ empreendimento_id: empreendimentoId, contrato_id: contratoId })

    if (error) {
        return { success: false, error: error.message }
    }

    revalidatePath("/empreendimentos")
    revalidatePath(`/empreendimentos/${empreendimentoId}`)
    revalidatePath("/contratos")
    revalidatePath(`/contratos/${contratoId}`)

    return { success: true }
}

export async function assignEmpreendimentoToLote(
    empreendimentoId: string,
    contratoId: string,
    loteId: string
) {
    const supabase = await createClient()
    // [P4] Guard: verificar cardinalidade de lotes OAE (máx. 5 empreendimentos)
    const { data: lote } = await supabase
        .from('lotes')
        .select('tipo')
        .eq('id', loteId)
        .single()

    if (lote?.tipo === 'OAE') {
        const { count } = await supabase
            .from('empreendimentos_contratos')
            .select('id', { count: 'exact', head: true })
            .eq('lote_id', loteId)
            .neq('empreendimento_id', empreendimentoId) // não contar o próprio se já estiver

        if ((count ?? 0) >= 5) {
            return {
                success: false,
                error: 'Lotes do tipo OAE suportam no máximo 5 empreendimentos.'
            }
        }
    }

    const { error } = await supabase
        .from("empreendimentos_contratos")
        .upsert(
            { empreendimento_id: empreendimentoId, contrato_id: contratoId, lote_id: loteId },
            { onConflict: "empreendimento_id,contrato_id" }
        )

    if (error) {
        return { success: false, error: error.message }
    }

    return { success: true }
}

export async function getEmpreendimentosByContrato(contratoId: string) {
    const supabase = await createClient()
    const { data, error } = await supabase
        .from("empreendimentos_contratos")
        .select(`
            empreendimento_id,
            lote_id
        `)
        .eq("contrato_id", contratoId)

    if (error) {
        console.error("Error fetching empreendimentos:", error)
        return []
    }

    const { getEmpreendimentos } = await import("@/lib/api-client")
    const apiEmps = await getEmpreendimentos(supabase);

    // Transform to flatten
    return data.map((item: any) => {
        const emp = apiEmps.find((e: any) => e.id === item.empreendimento_id);
        if (!emp) return null;
        return {
            id: emp.id,
            nome: emp.nome,
            codigo: emp.codigo,
            lote_id: item.lote_id
        }
    }).filter(Boolean)
}

export async function updateLoteEmpreendimentos(loteId: string, empreendimentoIds: string[], contratoId: string) {
    const supabase = await createClient()
    // [P4] Guard: verificar cardinalidade de lotes OAE antes de fazer qualquer atualização
    const { data: lote } = await supabase
        .from('lotes')
        .select('tipo')
        .eq('id', loteId)
        .single()

    if (lote?.tipo === 'OAE' && empreendimentoIds.length > 5) {
        return {
            success: false,
            error: `Lotes do tipo OAE suportam no máximo 5 empreendimentos. Você selecionou ${empreendimentoIds.length}.`
        }
    }

    // Limpar lote_id existente para este lote
    const { error: clearError } = await supabase
        .from("empreendimentos_contratos")
        .update({ lote_id: null })
        .eq("lote_id", loteId)

    if (clearError) return { success: false, error: clearError.message }

    if (empreendimentoIds.length === 0) {
        revalidatePath("/lotes")
        return { success: true }
    }

    // Atribuir lote_id para os empreendimentos selecionados
    const { error: updateError } = await supabase
        .from("empreendimentos_contratos")
        .update({ lote_id: loteId })
        .eq("contrato_id", contratoId)
        .in("empreendimento_id", empreendimentoIds)

    if (updateError) return { success: false, error: updateError.message }

    revalidatePath("/lotes")
    revalidatePath(`/lotes/${loteId}`)
    return { success: true }
}
