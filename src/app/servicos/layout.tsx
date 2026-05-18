import { DashboardShell } from "@/components/layout/dashboard-shell"
import { createClient } from "@/lib/supabase/server"
import { redirect } from "next/navigation"
import { cache, Suspense } from "react"
import Loading from "./loading"
import nextDynamic from 'next/dynamic'

const AgentChatWrapper = nextDynamic(
    () => import('@/components/ai-agent/AgentChatWrapper')
)



export const dynamic = "force-dynamic";

// Cache profile lookup por user ID para deduplicar chamadas dentro do mesmo request
const getUserProfile = cache(async (userId: string) => {
    const supabase = await createClient()
    const { data } = await supabase
        .from('tb_perfis')
        .select('funcao, trocar_senha, nivel_acesso, modulos_acesso')
        .eq('id', userId)
        .eq('sistema', 'planejamento')
        .single()
    return data
})

export default async function DashboardLayout({
    children,
}: {
    children: React.ReactNode
}) {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    let userRole = 'usuario'
    let modulosAcesso: string[] = []

    if (user) {
        const profile = await getUserProfile(user.id)

        if (profile) {
            userRole = profile.funcao || 'usuario'
            modulosAcesso = profile.modulos_acesso || []

            if (profile.trocar_senha) {
                redirect('/trocar-senha')
            }
        }
    }

    return (
        <>
            <DashboardShell userRole={userRole} modulosAcesso={modulosAcesso}>
                <Suspense fallback={<Loading />}>
                    {children}
                </Suspense>
            </DashboardShell>
            <AgentChatWrapper />
        </>
    )
}


