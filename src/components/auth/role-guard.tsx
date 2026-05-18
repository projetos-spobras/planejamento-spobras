'use client'

import { ReactNode } from 'react'
import type { UserProfile, UserRole } from '@/lib/auth-utils'

interface RoleGuardProps {
    /**
     * The pre-fetched user profile from the server.
     * Always pass this from a Server Component that fetched it securely.
     */
    profile: UserProfile | null
    
    /** Array of roles allowed to view this content. If undefined, role check is skipped. */
    allowedRoles?: UserRole[]
    
    /** Array of modules allowed to view this content. If undefined, module check is skipped. */
    allowedModules?: string[]
    
    /** The content to render if access is granted. */
    children: ReactNode
    
    /** The content to render if access is denied. Defaults to null. */
    fallback?: ReactNode
}

/**
 * Client component to conditionally render UI elements based on the user's role and module access.
 * 
 * IMPORTANT: This should ONLY be used for UI/UX purposes (hiding buttons, links).
 * Real authorization MUST still happen on the server (API Routes, Server Actions, Page protections).
 */
export function RoleGuard({ 
    profile, 
    allowedRoles, 
    allowedModules, 
    children, 
    fallback = null 
}: RoleGuardProps) {
    if (!profile) return <>{fallback}</>

    const isAdmin = profile.nivel_acesso === 'Admin'

    let hasAllowedRole = true
    if (allowedRoles && allowedRoles.length > 0) {
        hasAllowedRole = allowedRoles.includes(profile.nivel_acesso)
    }

    let hasAllowedModule = true
    if (allowedModules && allowedModules.length > 0) {
        hasAllowedModule = allowedModules.some(mod => profile.modulos_acesso.includes(mod))
    }

    // Admins generally bypass UI restrictions, but you can adjust this if needed
    if (isAdmin || (hasAllowedRole && hasAllowedModule)) {
        return <>{children}</>
    }

    return <>{fallback}</>
}
