import { createClient } from "@supabase/supabase-js"
import { getEmpreendimentos } from "../src/lib/api-client"
import * as dotenv from "dotenv"
import path from "path"

dotenv.config({ path: path.resolve(process.cwd(), ".env.local") })

async function test() {
    const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
    const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!
    const supabase = createClient(supabaseUrl, supabaseKey)

    console.log("Testing getEmpreendimentos extraction of phases...")
    const result = await getEmpreendimentos(supabase, { pageSize: 5 })
    
    console.log(`Total Projects: ${result.count}`)
    console.log("Phases extracted from API:")
    console.table(result.fases)
    
    if (result.fases.length > 0) {
        console.log("SUCCESS: Phases were extracted.")
    } else {
        console.log("FAILURE: No phases found.")
    }
}

test().catch(console.error)
