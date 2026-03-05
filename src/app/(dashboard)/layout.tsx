import { DashboardShell } from "@/components/layout/dashboard-shell"
import { createClient } from "@/lib/supabase/server"
import { redirect } from "next/navigation"

export const dynamic = "force-dynamic";

export default async function DashboardLayout({
    children,
}: {
    children: React.ReactNode
}) {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    let userRole = 'usuario'

    if (user) {
        const { data: profile } = await supabase
            .from('tb_perfis')
            .select('funcao, trocar_senha')
            .eq('id', user.id)
            .single()

        if (profile) {
            userRole = profile.funcao

            // Redirect to change password if flag is true
            // Avoid redirect loop if already on /trocar-senha (but layout wraps dashboard routes, assuming /trocar-senha is NOT inside (dashboard) group?
            // Wait, /trocar-senha is root level in app directory usually, or check path.
            // If this layout is ONLY for (dashboard), then reliable.
            // But if user forces url...

            // Wait, this file is src/app/(dashboard)/layout.tsx
            // So it only affects dashboard routes.
            // If /trocar-senha is at src/app/trocar-senha/page.tsx, it creates a new route outside dashboard layout.
            // So redirecting here is safe.

            if (profile.trocar_senha) {
                redirect('/trocar-senha')
            }
        }
    }

    return (
        <DashboardShell userRole={userRole}>
            {children}
        </DashboardShell>
    )
}
