import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'
import { debugLog } from '@/lib/debug-logger'

export async function proxy(request: NextRequest) {
    let supabaseResponse = NextResponse.next({
        request,
    })

    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || ''
    const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''

    const supabase = createServerClient(
        supabaseUrl,
        supabaseKey,
        {
            cookies: {
                getAll() {
                    return request.cookies.getAll()
                },
                setAll(cookiesToSet) {
                    cookiesToSet.forEach(({ name, value, options }) =>
                        request.cookies.set(name, value)
                    )
                    supabaseResponse = NextResponse.next({
                        request,
                    })
                    cookiesToSet.forEach(({ name, value, options }) =>
                        supabaseResponse.cookies.set(name, value, options)
                    )
                },
            },
        }
    )

    const { pathname } = request.nextUrl

    // 1. Skip auth for static assets and public routes
    if (
        pathname.startsWith('/_next') ||
        pathname.includes('.') ||
        pathname.startsWith('/uploadsex') ||
        pathname.startsWith('/auth') ||
        pathname.startsWith('/api/trigger') ||
        pathname.includes('/api/proxy-sid') ||
        pathname.includes('/api/diagnostic')
    ) {
        return supabaseResponse
    }

    try {
        const {
            data: { user },
        } = await supabase.auth.getUser()

        // 2. Redirect non-logged in users from internal pages to /login
        if (!user && !pathname.startsWith('/login')) {
            console.log(`[Proxy] Redirecting UNKNOWN user from ${pathname} to /login`)
            return NextResponse.redirect(new URL('/login', request.url))
        }

        // 3. Redirect logged in users away from /login to dashboard
        if (user && pathname.startsWith('/login')) {
            console.log(`[Proxy] Redirecting LOGGED user from ${pathname} to /`)
            return NextResponse.redirect(new URL('/', request.url))
        }
    } catch (e: any) {
        console.error(`[Proxy] Auth Error at ${pathname}:`, e?.message || e)
    }

    return supabaseResponse
}

export const config = {
    matcher: [
        '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
    ],
}
