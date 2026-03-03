import { serve } from "https://deno.land/std@0.168.0/http/server.ts"
import { createClient } from "https://esm.sh/@supabase/supabase-js@2"

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

serve(async (req) => {
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        const supabaseClient = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_ANON_KEY') ?? '',
            { global: { headers: { Authorization: req.headers.get('Authorization')! } } }
        )

        // Check if the user is an admin
        const {
            data: { user },
        } = await supabaseClient.auth.getUser()

        if (!user) throw new Error('Not authenticated')

        // Check if the user is an admin
        // We can trust the caller's JWT metadata for role check if 'user_type' is secure.
        // But to be safe and consistent with our new architecture:
        const { data: profile, error: profileError } = await supabaseClient
            .from('map_users')
            .select('user_type')
            .eq('id', user.id)
            .single()

        if (profileError || profile?.user_type !== 'admin') {
            console.error('Unauthorized access attempt:', user.id, profile);
            return new Response(
                JSON.stringify({ error: 'Unauthorized. Admin access required.' }),
                { headers: { ...corsHeaders, 'Content-Type': 'application/json' }, status: 403 }
            )
        }

        // Initialize Admin Client to create user
        const supabaseAdmin = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? ''
        )

        const { email, password, full_name, orgao, departamento, user_type } = await req.json()

        if (!email || !password) {
            throw new Error('Email and password are required')
        }

        let userData;
        let userId;

        const { data, error } = await supabaseAdmin.auth.admin.createUser({
            email,
            password,
            email_confirm: true,
            user_metadata: {
                full_name,
                orgao,
                departamento,
                user_type
            }
        })

        if (error) {
            // Check if user already exists
            if (error.message?.includes("already registered") || error.status === 422) {
                console.log("[create-user] User email already registered. Attempting to link/update profile...");

                // We cannot query Auth Users directly with simple client easily without listUsers permission/pagination.
                // But Supabase Admin client has `listUsers`.
                // Note: listUsers is paginated. If we have many users this might be flaky, but for internal app OK.
                // A better approach usually is "inviteUserByEmail" but we are setting password directly.

                // Let's try to find their ID via listUsers (scanning first page(s) or searching)
                // Unfortunately supabase-js doesn't have "getUserByEmail" in admin api publicly exposed in all versions easily.
                // We'll rely on `listUsers` implementation or just fail gracefully if we can't find.

                // Attempt to find user
                const { data: { users }, error: listError } = await supabaseAdmin.auth.admin.listUsers({
                    page: 1,
                    perPage: 1000 // Reasonable limit for this scope
                });

                if (listError) {
                    console.error("[create-user] Failed to list users to find existing one:", listError);
                    throw new Error("Usuário já existe, mas erro ao buscar detalhes: " + listError.message);
                }

                const existingUser = users.find(u => u.email?.toLowerCase() === email.toLowerCase());

                if (existingUser) {
                    userId = existingUser.id;
                    userData = { user: existingUser };
                    console.log(`[create-user] Found existing user: ${userId}`);

                    // Update Auth Metadata & Password
                    const { error: updateAuthError } = await supabaseAdmin.auth.admin.updateUserById(userId, {
                        password: password,
                        user_metadata: {
                            full_name, orgao, departamento, user_type,
                            must_change_password: true
                        }
                    });

                    if (updateAuthError) {
                        console.error("[create-user] Failed to update existing auth user:", updateAuthError);
                        throw new Error("Erro ao atualizar usuário existente: " + updateAuthError.message);
                    }

                    // Upsert Map Profile
                    const { error: upsertError } = await supabaseAdmin.from('map_users').upsert({
                        id: userId,
                        email,
                        full_name,
                        orgao,
                        departamento,
                        user_type,
                        must_change_password: true
                    });

                    if (upsertError) {
                        console.error("[create-user] Failed to upsert map profile:", upsertError);
                        throw new Error("Erro ao atualizar perfil do sistema: " + upsertError.message);
                    }

                    console.log("[create-user] Existing user linked and updated successfully.");

                } else {
                    console.warn("[create-user] User reported as existing but not found in list. Use might be in another page or deleted?");
                    throw new Error("E-mail já cadastrado, mas usuário não encontrado na lista administrativa.");
                }
            } else {
                console.error("[create-user] Error creating auth user:", error);
                throw error;
            }
        } else {
            // New User Created Successfully
            userData = data;
            userId = data.user.id;
            console.log(`[create-user] New user created: ${userId}`);

            // Create map_users profile
            const { error: mapError } = await supabaseAdmin.from('map_users').insert({
                id: userId,
                email,
                full_name,
                orgao,
                departamento,
                user_type,
                must_change_password: true
            });

            if (mapError) {
                console.error("[create-user] CRITICAL: Failed to create map_users profile:", mapError);
                // Attempt cleanup (optional but good practice)
                await supabaseAdmin.auth.admin.deleteUser(userId);
                throw new Error("Usuário Criado, mas falha ao criar perfil: " + mapError.message);
            }
        }

        return new Response(
            JSON.stringify(data),
            { headers: { ...corsHeaders, 'Content-Type': 'application/json' }, status: 200 }
        )

    } catch (error) {
        return new Response(
            JSON.stringify({ error: error.message }),
            { headers: { ...corsHeaders, 'Content-Type': 'application/json' }, status: 400 }
        )
    }
})
