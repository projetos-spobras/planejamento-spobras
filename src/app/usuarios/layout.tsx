import { createClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import { DashboardShell } from '@/components/layout/dashboard-shell'

export default async function AdminLayout({
    children,
}: {
    children: React.ReactNode
}) {
    const supabase = await createClient()

    const {
        data: { user },
    } = await supabase.auth.getUser()

    if (!user) {
        redirect('/login')
    }

    const { data: profile } = await supabase
        .from('tb_perfis')
        .select('funcao')
        .eq('id', user.id)
        .eq('sistema', 'planejamento')
        .single()

    if (profile?.funcao !== 'admin') {
        // You might want a 403 page or just redirect to home
        redirect('/')
    }

    return (
        <DashboardShell userRole="admin">
            {children}
        </DashboardShell>
    )
}
