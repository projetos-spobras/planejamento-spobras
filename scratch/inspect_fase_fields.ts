
import { fetchDirectlyFromSPObras } from './src/lib/api-client'
import * as dotenv from 'dotenv'

dotenv.config({ path: '.env.local' })

async function inspectEmpreendimentoFase() {
    try {
        console.log('--- INSPECIONANDO CAMPOS DE FASE DOS EMPREENDIMENTOS ---')
        const data = await fetchDirectlyFromSPObras('/api/Empreendimentos')
        if (Array.isArray(data) && data.length > 0) {
            console.log('Exemplo de registro:', JSON.stringify(data[0], null, 2))
            
            // Procura campos que podem ser o nome da fase
            const keys = Object.keys(data[0])
            const faseKeys = keys.filter(k => k.toLowerCase().includes('fase'))
            const statusKeys = keys.filter(k => k.toLowerCase().includes('status'))
            
            console.log('\nCampos relacionados a "fase":', faseKeys)
            console.log('Campos relacionados a "status":', statusKeys)
        } else {
            console.log('Nenhum dado retornado.')
        }
    } catch (error) {
        console.error('Erro ao inspecionar:', error)
    }
}

inspectEmpreendimentoFase().catch(console.error)
