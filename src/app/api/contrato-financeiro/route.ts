import { NextRequest, NextResponse } from 'next/server'
import { createClient } from '@/lib/supabase/server'
import { getContratoAditamentos, getContractEmpenhos, getContractMedicoes, parseApiValue } from '@/lib/api-client'

/**
 * GET /api/contrato-financeiro?contratoOriginalId=123&tipo=empenhos|medicoes|aditamentos
 *
 * Lazy-loads financial data for a single contract from the external API.
 * Called client-side when the user opens the corresponding tab — avoids blocking
 * the initial page load with N+1 API calls for each linked contract.
 */
export async function GET(request: NextRequest) {
    try {
        const supabase = await createClient()
        const { data: { user } } = await supabase.auth.getUser()

        if (!user) {
            return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })
        }

        const { searchParams } = new URL(request.url)
        const contratoOriginalId = searchParams.get('contratoOriginalId')
        const tipo = searchParams.get('tipo')

        if (!contratoOriginalId || !tipo) {
            return NextResponse.json({ error: 'Missing params: contratoOriginalId and tipo are required' }, { status: 400 })
        }

        if (!['empenhos', 'medicoes', 'aditamentos'].includes(tipo)) {
            return NextResponse.json({ error: 'tipo must be one of: empenhos, medicoes, aditamentos' }, { status: 400 })
        }

        let data: any[] = []

        if (tipo === 'empenhos') {
            data = await getContractEmpenhos(supabase, contratoOriginalId)
        } else if (tipo === 'medicoes') {
            data = await getContractMedicoes(supabase, contratoOriginalId)
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
    } catch (error: any) {
        console.error('[/api/contrato-financeiro] Error:', error)
        return NextResponse.json({ error: error.message || 'Internal error' }, { status: 500 })
    }
}
