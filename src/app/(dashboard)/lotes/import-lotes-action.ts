'use server'

import { createClient } from "@/lib/supabase/server"
import { revalidatePath } from "next/cache"

/**
 * Thin orchestrator — all heavy logic runs in the `import-lotes` Supabase Edge Function.
 * This server action simply triggers it and returns the result.
 *
 * Architecture:
 *   Next.js action → Supabase Edge Function (import-lotes) → External SQL API + DB writes
 */
export async function importLotesFromApi() {
    try {
        const supabase = await createClient()

        const { data, error } = await supabase.functions.invoke('import-lotes', {
            method: 'POST',
        })

        if (error) {
            return {
                success: false,
                created: 0,
                skipped: 0,
                errors: [error.message],
                message: `Erro na função de importação: ${error.message}`
            }
        }

        // Edge function returns { success, created, skipped, errors, message }
        revalidatePath('/lotes')
        return data as {
            success: boolean
            created: number
            skipped: number
            errors: string[]
            message: string
        }
    } catch (err: any) {
        return {
            success: false,
            created: 0,
            skipped: 0,
            errors: [err.message],
            message: `Erro inesperado: ${err.message}`
        }
    }
}
