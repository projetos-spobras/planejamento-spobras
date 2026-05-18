'use server'

import { createAdminClient } from '@/lib/supabase/admin'
import { createClient } from '@/lib/supabase/server'
import { revalidatePath } from 'next/cache'
import { getCurrentUserProfile } from '@/lib/auth-utils'

export async function createUser(prevState: any, formData: FormData) {
    const supabase = await createClient()

    const profile = await getCurrentUserProfile()
    
    if (profile?.nivel_acesso !== 'Admin') {
        return { error: 'Permissão negada. Apenas administradores podem gerenciar usuários.' }
    }

    const email = formData.get('email') as string
    const nome_completo = formData.get('nome') as string
    const gerencia = formData.get('gerencia') as string
    const isAdmin = formData.get('isAdmin') === 'on'
    const nivel_acesso = formData.get('nivel_acesso') as string
    const modulos_acesso = formData.getAll('modulos') as string[]

    // 2. Manage User using Service Role
    const supabaseAdmin = createAdminClient()

    let userId: string | undefined

    // Try to create the user first
    const { data: newUser, error: createError } = await supabaseAdmin.auth.admin.createUser({
        email,
        password: 'Mudar@123', // Default Password
        email_confirm: true,
        user_metadata: {
            full_name: nome_completo,
            nome_completo, // Mantido para retrocompatibilidade
            gerencia,
            orgao: 'SP Obras',
            departamento: gerencia,
            user_type: 'user',
            must_change_password: true,
            email_verified: true
        }
    })

    if (createError) {
        // Se o erro for de e-mail já registrado, vamos buscar o ID desse usuário existente
        if (createError.message.includes('already been registered')) {
            let page = 1
            const perPage = 1000
            
            while (true) {
                const { data: { users }, error: listError } = await supabaseAdmin.auth.admin.listUsers({
                    page,
                    perPage
                })

                if (listError || !users || users.length === 0) break

                const found = users.find(u => u.email?.toLowerCase() === email.toLowerCase())
                if (found) {
                    userId = found.id
                    break
                }

                if (users.length < perPage) break
                page++
            }

            if (!userId) {
                return { error: 'O e-mail já está cadastrado em outra plataforma deste projeto, mas não pôde ser localizado após busca exaustiva.' }
            }
        } else {
            console.error("[createUser] Auth Error:", createError)
            return { error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
        }
    } else {
        if (!newUser.user) {
            return { error: 'Erro inesperado ao criar usuário: registro retornou vazio.' }
        }
        userId = newUser.user.id
    }

    // 3. Insert/Update into tb_perfis for this system
    const { error: profileError } = await supabaseAdmin
        .from('tb_perfis')
        .upsert({
            id: userId,
            sistema: 'planejamento',
            nome_completo,
            email,
            gerencia,
            funcao: isAdmin ? 'admin' : 'usuario',
            nivel_acesso: isAdmin ? 'admin' : nivel_acesso,
            modulos_acesso: isAdmin ? [
                'empreendimentos',
                'contratos',
                'servicos',
                'lotes',
                'planejamento',
                'ambiental',
                'desapropriacoes',
                'empenhos'
            ] : modulos_acesso,
            trocar_senha: true // Force password change
        })


    if (profileError) {
        console.error("[createUser] Profile Error:", profileError)
        return { error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/usuarios')
    return { success: true, message: 'Usuário criado com sucesso!' }
}

export async function deleteUser(userId: string) {
    const profile = await getCurrentUserProfile()
    
    if (profile?.nivel_acesso !== 'Admin') {
        return { error: 'Permissão negada.' }
    }

    if (userId === profile.id) {
        return { error: 'Você não pode excluir a si mesmo.' }
    }

    // 2. Delete profile only (keep auth user for other apps)
    const supabaseAdmin = createAdminClient()

    const { error: deleteError } = await supabaseAdmin
        .from('tb_perfis')
        .delete()
        .eq('id', userId)
        .eq('sistema', 'planejamento')

    if (deleteError) {
        console.error("[deleteUser] Delete Error:", deleteError)
        return { error: 'Ocorreu um erro interno. Por favor, contate o suporte.' }
    }

    revalidatePath('/usuarios')
    return { success: true, message: 'Usuário excluído com sucesso.' }
}
