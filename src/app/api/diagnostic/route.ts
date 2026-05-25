import { NextResponse } from 'next/server'
import { withAuth } from '@/lib/api-middleware'
import { createClient } from '@/lib/supabase/server'
import { getCurrentUserProfile } from '@/lib/auth-utils'

/**
 * GET /api/diagnostic
 * 
 * Endpoint de diagnóstico do sistema.
 * Restrito apenas ao perfil 'Admin'.
 */
export const GET = withAuth({
    handler: async ({ req, user }) => {
        // 1. Verificar permissão de Admin (Camada adicional de segurança)
        const profile = await getCurrentUserProfile()
        
        if (profile?.nivel_acesso !== 'Admin') {
            return NextResponse.json(
                { error: 'Acesso negado. Apenas administradores podem acessar este recurso.' }, 
                { status: 403 }
            )
        }

        // 2. Coletar metadados do sistema
        const nextVersion = "16.1.1"
        const environment = process.env.NODE_ENV
        const timestamp = new Date().toISOString()
        
        const env_check = {
            API_URL: process.env.SPOBRAS_API_URL ? 'Defined' : 'UNDEFINED',
            API_USER: process.env.SPOBRAS_API_USER ? 'Defined' : 'UNDEFINED',
            API_PASS: process.env.SPOBRAS_API_PASSWORD ? 'Defined' : 'UNDEFINED',
            BASE_URL_OLD: process.env.SPOBRAS_API_BASE_URL ? 'Defined (OLD)' : 'None'
        }

        // 3. Testar conexão com Supabase (Ping leve)
        let supabaseStatus = 'ok'
        try {
            const supabase = await createClient()
            const { error } = await supabase.from('tb_perfis').select('id').limit(1)
            if (error) {
                console.error('[Diagnostic] Supabase ping failed:', error.message)
                supabaseStatus = 'error'
            }
        } catch (e) {
            console.error('[Diagnostic] Supabase connection exception:', e)
            supabaseStatus = 'exception'
        }

        // 4. Testar Paginação da API Legado
        let paginationTest: any = null
        try {
            const fetchTest = async (page: number) => {
                const url = new URL(`${req.nextUrl.origin}/api/proxy-sid`)
                url.searchParams.set('path', `/api/Empreendimentos?pagina=${page}&quantidade=2`)
                const res = await fetch(url.toString(), {
                    headers: { 'Cookie': req.headers.get('cookie') || '' }
                })
                if (!res.ok) return { error: res.status }
                const data = await res.json()
                const items = data.itens || data.value || (Array.isArray(data) ? data : [])
                return items.map((i: any) => ({
                    id: i.idEmpreendimento || i.IdEmpreendimento,
                    nome: (i.nmEmpreendimento || i.NmEmpreendimento || '').substring(0, 20)
                }))
            }

            const [p0, p1, p2] = await Promise.all([fetchTest(0), fetchTest(1), fetchTest(2)])
            paginationTest = { p0, p1, p2 }
        } catch (e: any) {
            paginationTest = { error: e.message }
        }

        return NextResponse.json({
            status: 'online',
            next_version: nextVersion,
            supabase_connection: supabaseStatus,
            environment: environment,
            server_time_utc: timestamp,
            pagination_test: paginationTest,
            env_status: env_check,
            user_context: {
                role: profile.nivel_acesso,
                id: user.id
            }
        }, {
            // Garantir que esta resposta NUNCA seja cacheada
            headers: {
                'Cache-Control': 'no-store, no-cache, must-revalidate, proxy-revalidate',
                'Pragma': 'no-cache',
                'Expires': '0',
            }
        })
    }
})
