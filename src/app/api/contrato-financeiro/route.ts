import { NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'
import { getContratoAditamentos, getContractEmpenhos, getContractMedicoes, parseApiValue, getEmpreendimentoNamesMap } from '@/lib/api-client'
import { withAuth } from '@/lib/api-middleware'
import { z } from 'zod'

const paramsSchema = z.object({
    contratoOriginalId: z.string().min(1, 'contratoOriginalId is required'),
    tipo: z.enum(['empenhos', 'medicoes', 'aditamentos'])
})

/**
 * GET /api/contrato-financeiro?contratoOriginalId=123&tipo=empenhos|medicoes|aditamentos
 *
 * Lazy-loads financial data for a single contract from the external API.
 * Secured by withAuth wrapper (handles session, validation, rate limiting, and errors).
 */
export const GET = withAuth({
    paramsSchema,
    handler: async ({ params }) => {
        const { contratoOriginalId, tipo } = params
        const supabase = await createClient()

        let data: any[] = []

        if (tipo === 'empenhos') {
            data = await getContractEmpenhos(supabase, contratoOriginalId)
        } else if (tipo === 'medicoes') {
            const namesMap = await getEmpreendimentoNamesMap()
            data = await getContractMedicoes(supabase, contratoOriginalId, namesMap)
        } else if (tipo === 'aditamentos') {
            const raw = await getContratoAditamentos(supabase, contratoOriginalId)
            let totalAdit = 0
            raw.forEach((ad: any) => {
                const val = ad.vlAditamento ?? ad.VlAditamento ?? 
                            ad.vlrAditamento ?? ad.VlrAditamento ?? 
                            ad.vlAditado ?? ad.VlAditado ?? 
                            ad.vlrAditado ?? ad.VlrAditado ?? 
                            ad.valorAditamento ?? ad.ValorAditamento ??
                            ad.vlTotalAditamento ?? ad.VlTotalAditamento ?? 0
                totalAdit += parseApiValue(val)
            })
            data = raw
            return NextResponse.json({ data: raw, totalAditamento: totalAdit }, {
                headers: {
                    'Cache-Control': 'private, s-maxage=60, stale-while-revalidate=300'
                }
            })
        }

        return NextResponse.json({ data }, {
            headers: {
                'Cache-Control': 'private, s-maxage=60, stale-while-revalidate=300'
            }
        })
    }
})

