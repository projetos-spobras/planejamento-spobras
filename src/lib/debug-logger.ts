import fs from 'fs'
import path from 'path'

export function debugLog(message: string) {
    try {
        const logPath = path.join(process.cwd(), 'debug_upload.log')
        const timestamp = new Date().toISOString()
        const logMessage = `[${timestamp}] ${message}\n`
        fs.appendFileSync(logPath, logMessage)
        console.log(message)
    } catch (e) {
        console.error("Failed to write to debug log:", e)
    }
}
