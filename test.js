import { createClient } from '@supabase/supabase-js'
import dotenv from 'dotenv'
import path from 'path'
import fs from 'fs'

dotenv.config({ path: path.join(process.cwd(), '.env.local') })

async function run() {
    const supabase = createClient(process.env.NEXT_PUBLIC_SUPABASE_URL, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY)
    
    let { data, error } = await supabase.from('servicos').select('*').limit(1);
    if (data && data.length > 0) {
        fs.writeFileSync('cols.json', JSON.stringify(Object.keys(data[0])));
    }
}

run();
