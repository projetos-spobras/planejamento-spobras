import { cache } from 'react'
import { createClient } from './supabase/server'
import { redirect } from 'next/navigation'

export type UserRole = 'Admin' | 'Gestor' | 'Analista'

export interface UserProfile {
    id: string
    nivel_acesso: UserRole
    modulos_acesso: string[]
}

/**
 * Server-side helper to fetch the authenticated user's profile.
 * Deduplicated per request lifecycle using React.cache().
 */
export const getCurrentUserProfile = cache(async (): Promise<UserProfile | null> => {
    const supabase = await createClient()
    
    // Check if the user is authenticated
    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) {
        return null
    }

    // Fetch the profile
    const { data: profile, error: profileError } = await supabase
        .from('tb_perfis')
        .select('id, nivel_acesso, modulos_acesso')
        .eq('id', user.id)
        .eq('sistema', 'planejamento')
        .single()

    if (profileError || !profile) {
        return null
    }

    // Ensure strict typing based on database values, fallback to Analista
    let role: UserRole = 'Analista'
    const dbRole = profile.nivel_acesso?.toLowerCase()
    
    if (dbRole === 'admin') role = 'Admin'
    else if (dbRole === 'gestor') role = 'Gestor'

    return {
        id: profile.id,
        nivel_acesso: role,
        modulos_acesso: profile.modulos_acesso || [],
    }
})

/**
 * Higher-Order Component (HOC) for Server Components to enforce Role-Based Access Control.
 * Redirects unauthorized users to /unauthorized.
 * 
 * @param allowedRoles Array of roles that are permitted to access the component.
 * @param allowedModules Optional array of modules. User must have at least one of these modules to access.
 */
export function withRole(allowedRoles: UserRole[], allowedModules?: string[]) {
    return function <P extends object>(Component: React.ComponentType<P>) {
        return async function WithRoleWrapper(props: P) {
            const profile = await getCurrentUserProfile()
            
            if (!profile) {
                redirect('/login')
            }

            const isAdmin = profile.nivel_acesso === 'Admin'
            const hasAllowedRole = allowedRoles.includes(profile.nivel_acesso)
            
            let hasAllowedModule = true
            if (allowedModules && allowedModules.length > 0) {
                hasAllowedModule = allowedModules.some(mod => profile.modulos_acesso.includes(mod))
            }

            // Admins generally bypass role restrictions, but you can adjust this if needed
            if (!isAdmin && (!hasAllowedRole || !hasAllowedModule)) {
                redirect('/unauthorized')
            }

            const React = await import('react')
            return React.createElement(Component as any, props)
        }
    }
}
