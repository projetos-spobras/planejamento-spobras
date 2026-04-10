
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkConfig() {
    console.log('Checking for configuration tables...');
    
    // List tables in public schema
    const { data: tables, error: tableError } = await supabase
        .from('information_schema.tables')
        .select('table_name')
        .eq('table_schema', 'public');

    if (tableError) {
        console.error('Error fetching tables:', tableError.message);
        // Fallback: try common names
        const commonTables = ['config', 'settings', 'parametros', 'api_config'];
        for (const t of commonTables) {
            const { data, error } = await supabase.from(t).select('*').limit(1);
            if (!error) console.log(`Table found: ${t}`, data);
        }
    } else {
        console.log('Tables found:', tables.map(t => t.table_name).join(', '));
    }
}

checkConfig();
