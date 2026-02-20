'use server'

import { createAdminClient } from '@/lib/supabase/admin'
import { createClient } from '@/lib/supabase/server'
import { revalidatePath } from 'next/cache'

export async function createUser(prevState: any, formData: FormData) {
    const supabase = await createClient()

    // 1. Verify if current user is admin
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return { error: 'Não autenticado' }

    // Check profile role
    const { data: profile } = await supabase
        .from('tb_perfis')
        .select('funcao')
        .eq('id', user.id)
        .single()

    if (profile?.funcao !== 'admin') {
        // For bootstrapping first user, you might comment this check out temporarily 
        // or set the first user as admin in DB manually.
        // return { error: 'Permissão negada. Apenas administradores podem criar usuários.' }
        // Allowing for now if no profile exists? No, stick to security.
        return { error: 'Permissão negada. Apenas administradores podem criar usuários.' }
    }

    const email = formData.get('email') as string
    const nome_completo = formData.get('nome') as string
    const gerencia = formData.get('gerencia') as string
    const isAdmin = formData.get('isAdmin') === 'on'

    // 2. Create User using Service Role
    const supabaseAdmin = createAdminClient()

    const { data: newUser, error: createError } = await supabaseAdmin.auth.admin.createUser({
        email,
        password: 'Mudar@123', // Default Password
        email_confirm: true,
        user_metadata: {
            nome_completo,
            gerencia
        }
    })

    if (createError) {
        return { error: createError.message }
    }

    if (!newUser.user) {
        return { error: 'Erro inesperado ao criar usuário' }
    }

    // 3. Insert into tb_perfis
    // Note: auth.users trigger is better, but doing manual insert for now to ensure data consistency as requested
    const { error: profileError } = await supabaseAdmin
        .from('tb_perfis')
        .upsert({
            id: newUser.user.id,
            nome_completo,
            email,
            gerencia,
            funcao: isAdmin ? 'admin' : 'usuario',
            trocar_senha: true // Force password change
        })

    if (profileError) {
        // Ideally delete the auth user if profile creation fails
        await supabaseAdmin.auth.admin.deleteUser(newUser.user.id)
        return { error: 'Erro ao criar perfil do usuário: ' + profileError.message }
    }

    revalidatePath('/usuarios')
    return { success: true, message: 'Usuário criado com sucesso!' }
}

export async function deleteUser(userId: string) {
    const supabase = await createClient()

    // 1. Check permissions
    const { data: { user } } = await supabase.auth.getUser()
    if (!user) return { error: 'Não autenticado' }

    const { data: profile } = await supabase
        .from('tb_perfis')
        .select('funcao')
        .eq('id', user.id)
        .single()

    if (profile?.funcao !== 'admin') {
        return { error: 'Permissão negada.' }
    }

    if (userId === user.id) {
        return { error: 'Você não pode excluir a si mesmo.' }
    }

    // 2. Delete user via Admin Client
    const supabaseAdmin = createAdminClient()

    // Deleting from auth.users cascades to tb_perfis usually, but let's be safe
    const { error: deleteError } = await supabaseAdmin.auth.admin.deleteUser(userId)

    if (deleteError) {
        return { error: 'Erro ao excluir usuário: ' + deleteError.message }
    }

    revalidatePath('/usuarios')
    return { success: true, message: 'Usuário excluído com sucesso.' }
}
