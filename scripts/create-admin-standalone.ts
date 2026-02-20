
import { createClient } from '@supabase/supabase-js'
import * as dotenv from 'dotenv'
import { resolve } from 'path'

// Carregar .env.local
dotenv.config({ path: resolve(process.cwd(), '.env.local') })

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !serviceRoleKey) {
    console.error('Erro: Variáveis de ambiente NEXT_PUBLIC_SUPABASE_URL e SUPABASE_SERVICE_ROLE_KEY são obrigatórias.')
    process.exit(1)
}

const supabase = createClient(supabaseUrl, serviceRoleKey, {
    auth: {
        autoRefreshToken: false,
        persistSession: false
    }
})

async function main() {
    const email = 'terceiro.ntiburcio@spobras.sp.gov.br'
    const password = 'Senhafacil09'
    const nome = 'Nicolas Tiburcio'
    const gerencia = 'PMO'
    const role = 'admin'

    console.log(`Iniciando criação do usuário: ${email}`)

    // 1. Verificar se usuário já existe
    const { data: existingUsers } = await supabase.auth.admin.listUsers()
    const userExists = existingUsers.users.find(u => u.email === email)

    if (userExists) {
        console.log('Usuário Auth já existe:', userExists.id)

        // Verificar perfil
        const { data: profile } = await supabase.from('tb_perfis').select('*').eq('id', userExists.id).single()
        if (profile) {
            console.log('Perfil já existe.')
            return
        }

        console.log('Perfil não encontrado, criando...')
        const { error: insertError } = await supabase.from('tb_perfis').insert({
            id: userExists.id,
            nome_completo: nome,
            email: email,
            gerencia: gerencia,
            funcao: role
        })

        if (insertError) {
            console.error('Erro ao criar perfil para usuário existente:', insertError)
        } else {
            console.log('Perfil criado com sucesso!')
        }
        return
    }

    // 2. Criar no Auth
    const { data: authUser, error: authError } = await supabase.auth.admin.createUser({
        email,
        password,
        email_confirm: true,
        user_metadata: { nome_completo: nome }
    })

    if (authError || !authUser.user) {
        console.error('Erro ao criar Auth User:', authError?.message)
        return
    }

    console.log('Usuário Auth criado com ID:', authUser.user.id)

    // 3. Inserir no Perfil
    const { error: profileError } = await supabase
        .from('tb_perfis')
        .insert({
            id: authUser.user.id,
            nome_completo: nome,
            email: email,
            gerencia: gerencia,
            funcao: role
        })

    if (profileError) {
        console.error('Erro ao criar registro na tabela tb_perfis:', profileError.message)
        console.log('Atenção: O usuário Auth foi criado, mas o perfil falhou. Delete o usuário Auth antes de tentar novamente ou insira o perfil manualmente.')
    } else {
        console.log('Sucesso! Usuário Admin criado e perfil vinculado.')
    }
}

main().catch(console.error)
