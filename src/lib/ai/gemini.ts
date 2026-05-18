import { GoogleGenerativeAI, HarmCategory, HarmBlockThreshold } from '@google/generative-ai'

/**
 * Inicializa o SDK do Google Generative AI
 * A chave da API é lida do ambiente e NUNCA deve ser exposta ao cliente.
 */
if (!process.env.GEMINI_API_KEY) {
  // Nota: Em ambiente Next.js, isso será verificado no servidor.
  // Certifique-se de que a variável não tenha o prefixo NEXT_PUBLIC_.
  console.warn('[AI] GEMINI_API_KEY não configurada. O agente de IA não funcionará corretamente.')
}

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY || '')

/**
 * Retorna uma instância configurada do modelo Gemini 2.0 Flash.
 * Configurado para respostas técnicas e determinísticas (temperatura baixa).
 */
export function getGeminiModel() {
  return genAI.getGenerativeModel({
    model: 'gemini-2.0-flash',
    generationConfig: {
      temperature: 0.3,
      maxOutputTokens: 2048,
      responseMimeType: 'text/plain',
    },
    safetySettings: [
      {
        category: HarmCategory.HARM_CATEGORY_DANGEROUS_CONTENT,
        threshold: HarmBlockThreshold.BLOCK_MEDIUM_AND_ABOVE,
      },
      {
        category: HarmCategory.HARM_CATEGORY_HARASSMENT,
        threshold: HarmBlockThreshold.BLOCK_MEDIUM_AND_ABOVE,
      },
    ],
  })
}

/**
 * Valida se um arquivo é compatível com o processamento do Gemini.
 * Limites: 10MB e tipos específicos (PDF, Imagens, Planilhas).
 */
export function validateFileForGemini(file: File): { valid: boolean; error?: string } {
  const allowedTypes = [
    'image/jpeg',
    'image/png',
    'image/webp',
    'application/pdf',
    // Excel (.xlsx)
    'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    // CSV
    'text/csv'
  ]

  const MAX_SIZE = 10 * 1024 * 1024 // 10MB

  if (!allowedTypes.includes(file.type)) {
    return { 
      valid: false, 
      error: 'Tipo de arquivo não suportado. Use PDF, Imagens (JPG, PNG, WebP) ou Planilhas (Excel, CSV).' 
    }
  }

  if (file.size > MAX_SIZE) {
    return { 
      valid: false, 
      error: 'O arquivo é muito grande. O limite máximo é de 10MB.' 
    }
  }

  return { valid: true }
}
