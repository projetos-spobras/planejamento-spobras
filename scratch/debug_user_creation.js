
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const { resolve } = require('path');

dotenv.config({ path: resolve(process.cwd(), '.env.production') });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, serviceRoleKey);

async function test() {
    const testEmail = `test_${Date.now()}@example.com`;
    console.log(`Testing creation for ${testEmail}...`);

    // Test 1: Minimal creation
    const { data, error } = await supabase.auth.admin.createUser({
        email: testEmail,
        password: 'Password123',
        email_confirm: true
    });

    if (error) {
        console.error('Test 1 Failed:', error.message);
    } else {
        console.log('Test 1 Success! User ID:', data.user.id);
        // Cleanup
        await supabase.auth.admin.deleteUser(data.user.id);
        console.log('Test 1 User Deleted.');
    }
}

test().catch(console.error);
