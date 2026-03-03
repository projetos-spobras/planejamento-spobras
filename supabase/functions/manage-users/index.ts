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
        const supabaseAdmin = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
            {
                auth: {
                    autoRefreshToken: false,
                    persistSession: false
                }
            }
        );

        // Get current user to verify request comes from an admin
        const supabaseClient = createClient(
            Deno.env.get('SUPABASE_URL') ?? '',
            Deno.env.get('SUPABASE_ANON_KEY') ?? '',
            { global: { headers: { Authorization: req.headers.get('Authorization')! } } }
        );

        const { data: { user } } = await supabaseClient.auth.getUser();

        if (!user) {
            throw new Error('Unauthorized');
        }

        // Verify admin role
        const { data: callerProfile } = await supabaseAdmin
            .from('map_users')
            .select('user_type')
            .eq('id', user.id)
            .single();

        if (callerProfile?.user_type !== 'admin') {
            throw new Error('Unauthorized: Admin access required');
        }

        const { action, userId, data } = await req.json();

        if (!userId) {
            throw new Error('UserId is required');
        }

        if (action === 'delete') {
            const { error } = await supabaseAdmin.auth.admin.deleteUser(userId);
            if (error) throw error;

            // map_users should auto-delete if we had cascade, but let's manual delete to be sure
            await supabaseAdmin.from('map_users').delete().eq('id', userId);

            return new Response(
                JSON.stringify({ message: 'User deleted successfully' }),
                { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
            );
        }

        else if (action === 'update') {
            // Update auth user metadata (important for JWT)
            const { error: authError } = await supabaseAdmin.auth.admin.updateUserById(
                userId,
                { user_metadata: data }
            );

            if (authError) throw authError;

            // Update public table
            const { error: dbError } = await supabaseAdmin
                .from('map_users')
                .update(data)
                .eq('id', userId);

            if (dbError) throw dbError;

            return new Response(
                JSON.stringify({ message: 'User updated successfully' }),
                { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
            );
        }
        else if (action === 'reset_password') {
            console.log(`[manage-users] Attempting password reset for user: ${userId}`);

            try {
                // 1. Reset password in Auth AND update metadata
                // We update metadata here too so the JWT reflects state immediately if needed, 
                // although our app relies on the table.
                const { data: authData, error: authError } = await supabaseAdmin.auth.admin.updateUserById(
                    userId,
                    {
                        password: 'Mudar@123',
                        user_metadata: { must_change_password: true }
                    }
                );

                if (authError) {
                    console.error("[manage-users] Auth reset failed:", authError);
                    throw new Error(`Erro ao resetar senha no Auth: ${authError.message}`);
                }

                console.log("[manage-users] Auth password reset successful");

                // 2. Force password change flag in DB (map_users table)
                const { error: dbError } = await supabaseAdmin
                    .from('map_users')
                    .update({ must_change_password: true })
                    .eq('id', userId);

                if (dbError) {
                    console.error("[manage-users] DB flag update failed:", dbError);
                    // We don't throw here to avoid "undoing" the password reset in the user's eyes (Auth is done),
                    // but we warn the admin via response or just log it properly.
                    // Ideally we want consistency. Let's throw to indicate partial failure.
                    throw new Error(`Senha resetada, mas erro ao atualizar flag no banco: ${dbError.message}`);
                }

                console.log("[manage-users] DB flag updated. Reset complete.");

                return new Response(
                    JSON.stringify({ message: 'Senha resetada com sucesso para Mudar@123' }),
                    { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
                );

            } catch (innerError: any) {
                console.error("[manage-users] Reset password exception:", innerError);
                throw innerError;
            }
        }

        throw new Error('Invalid action');

    } catch (error) {
        return new Response(
            JSON.stringify({ error: error.message }),
            {
                headers: { ...corsHeaders, 'Content-Type': 'application/json' },
                status: 400
            }
        )
    }
})
