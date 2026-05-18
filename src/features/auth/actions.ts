
'use server'

import { createClient } from '@/lib/supabase/server'
import { revalidatePath } from 'next/cache'

export async function updatePassword(password: string) {
    const supabase = await createClient()

    const { data: { user }, error: authError } = await supabase.auth.getUser()
    if (authError || !user) return { error: 'Não autorizado' }

    // 1. Update Auth Password
    const { error: updateError } = await supabase.auth.updateUser({
        password: password
    })

    if (updateError) {
        console.error("[updatePassword]", updateError)
        return { error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    // 2. Update Profile Flag using Service Role (since RLS might restrict update of other columns if not careful, 
    // but here user updates their own row. However, RLS policy "Usuários podem atualizar seu próprio perfil" covers updates where uid = id.
    // Let's assume the user has permission to update 'trocar_senha' to false on themselves.
    // If not, we might need admin client. But standard RLS usually allows full update on row.
    // Let's try standard client first.

    const { error: profileError } = await supabase
        .from('tb_perfis')
        .update({ trocar_senha: false })
        .eq('id', user.id)
        .eq('sistema', 'planejamento')

    if (profileError) {
        console.error("[updatePassword]", profileError)
        return { error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/')
    return { success: true }
}
