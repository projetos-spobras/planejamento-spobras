"use server"

import { supabase } from "@/lib/supabase"
import { revalidatePath } from "next/cache"

export async function saveDistribuicaoFinanceiraBatch(
    servicoId: string, 
    distribuicoes: {ano: number, mes: number, valor: number, fonte_recurso?: string | null}[],
    pathToRevalidate: string = "/planejamento"
) {
    if (!servicoId) return { success: false, error: "servico_id missing" }

    try {
        // Excluir todas as distribuições atuais para este serviço
        const { error: deleteError } = await supabase
            .from("distribuicao_financeira")
            .delete()
            .eq("servico_id", servicoId);

        if (deleteError) throw deleteError;

        // Inserir as novas separadamente (apenas valores maiores que 0)
        const toInsert = distribuicoes
            .filter(d => d.valor > 0)
            .map(d => ({
                servico_id: servicoId,
                ano: d.ano,
                mes: d.mes,
                valor: d.valor,
                fonte_recurso: d.fonte_recurso || null
            }));

        if (toInsert.length > 0) {
            const { error: insertError } = await supabase
                .from("distribuicao_financeira")
                .insert(toInsert);
            if (insertError) throw insertError;
        }

        revalidatePath(pathToRevalidate);
        return { success: true };
    } catch (e: any) {
        return { success: false, error: e.message };
    }
}
