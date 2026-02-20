
import * as dotenv from 'dotenv'
import { resolve } from 'path'

dotenv.config({ path: resolve(process.cwd(), '.env.local') })

const key = process.env.SUPABASE_SERVICE_ROLE_KEY || ''
console.log('Key length:', key.length)

if (!key) {
    console.log('Key is empty')
    process.exit(0)
}

try {
    const parts = key.split('.')
    if (parts.length !== 3) {
        console.log('Key is NOT a valid JWT (does not have 3 parts).')
        console.log('First 5 chars:', key.substring(0, 5))
    } else {
        const payload = JSON.parse(Buffer.from(parts[1], 'base64').toString())
        console.log('JWT Payload Role:', payload.role)
        console.log('JWT Iss:', payload.iss)
        if (payload.role !== 'service_role') {
            console.error('ERROR: Key is NOT a service_role key. It seems to be:', payload.role)
        } else {
            console.log('Key seems valid (role: service_role).')
        }
    }
} catch (e) {
    console.error('Error decoding key:', e)
}
