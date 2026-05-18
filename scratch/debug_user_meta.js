
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const { resolve } = require('path');

dotenv.config({ path: resolve(process.cwd(), '.env.production') });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, serviceRoleKey);

async function test() {
    const testEmail = `test_meta_${Date.now()}@example.com`;
    console.log(`Testing creation with metadata for ${testEmail}...`);

    const { data, error } = await supabase.auth.admin.createUser({
        email: testEmail,
        password: 'Password123',
        email_confirm: true,
        user_metadata: {
            sistema: 'planejamento',
            nome_completo: 'Test User',
            gerencia: 'PMO'
        }
    });

    if (error) {
        console.error('Meta Test Failed:', error.message);
    } else {
        console.log('Meta Test Success! User ID:', data.user.id);
        // Cleanup
        await supabase.auth.admin.deleteUser(data.user.id);
        console.log('User Deleted.');
    }
}

test().catch(console.error);
