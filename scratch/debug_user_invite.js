
const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');
const { resolve } = require('path');

dotenv.config({ path: resolve(process.cwd(), '.env.production') });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, serviceRoleKey);

async function test() {
    const testEmail = `invite_${Date.now()}@example.com`;
    console.log(`Testing invitation for ${testEmail}...`);

    const { data, error } = await supabase.auth.admin.inviteUserByEmail(testEmail);

    if (error) {
        console.error('Invitation Failed:', error.message);
    } else {
        console.log('Invitation Success! User ID:', data.user.id);
        // Cleanup
        await supabase.auth.admin.deleteUser(data.user.id);
        console.log('User Deleted.');
    }
}

test().catch(console.error);
