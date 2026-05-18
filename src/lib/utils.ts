import { clsx, type ClassValue } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

export function generateUUID() {
  if (typeof crypto !== 'undefined' && crypto.randomUUID) {
    return crypto.randomUUID()
  }
  // Fallback para contextos não-seguros (HTTP) ou navegadores antigos
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

export function formatarDataBR(dataStr: string | null | undefined): string {
  if (!dataStr) return '-'
  
  // Extrair partes diretamente da string sem converter timezone
  // Aceita: YYYY-MM-DD, YYYY-MM-DDTHH:mm:ss, DD/MM/YYYY
  const match = String(dataStr).match(/^(\d{4})-(\d{2})-(\d{2})/)
  if (match) {
    return `${match[3]}/${match[2]}/${match[1]}`  // DD/MM/YYYY
  }
  
  // Se já vier no formato DD/MM/YYYY, retornar como está
  if (/^\d{2}\/\d{2}\/\d{4}$/.test(String(dataStr))) {
    return String(dataStr)
  }
  
  return '-'
}

export function paraFormatoInputDate(dataStr: string | null | undefined): string {
  if (!dataStr) return ''
  
  // Se já está em YYYY-MM-DD, retornar como está
  if (/^\d{4}-\d{2}-\d{2}/.test(String(dataStr))) {
    return String(dataStr).slice(0, 10)  // garantir apenas YYYY-MM-DD
  }
  
  // Se está em DD/MM/YYYY, converter
  const match = String(dataStr).match(/^(\d{2})\/(\d{2})\/(\d{4})/)
  if (match) {
    return `${match[3]}-${match[2]}-${match[1]}`
  }
  
  return ''
}

export function calcularDuracaoDias(
  dataInicio: string | null | undefined,
  dataFim: string | null | undefined
): number | null {
  if (!dataInicio || !dataFim) return null
  
  // Extrair partes sem converter timezone
  const parseData = (str: string): Date | null => {
    const match = String(str).match(/^(\d{4})-(\d{2})-(\d{2})/)
    if (match) {
      // Usar UTC explicitamente para evitar problema de timezone
      return new Date(Date.UTC(
        Number(match[1]), 
        Number(match[2]) - 1, 
        Number(match[3])
      ))
    }
    // Formato DD/MM/YYYY
    const matchBR = String(str).match(/^(\d{2})\/(\d{2})\/(\d{4})/)
    if (matchBR) {
      return new Date(Date.UTC(
        Number(matchBR[3]), 
        Number(matchBR[2]) - 1, 
        Number(matchBR[1])
      ))
    }
    return null
  }
  
  const inicio = parseData(dataInicio)
  const fim = parseData(dataFim)
  
  if (!inicio || !fim) return null
  if (fim < inicio) return null
  
  const diffMs = fim.getTime() - inicio.getTime()
  return Math.round(diffMs / (1000 * 60 * 60 * 24))
}
