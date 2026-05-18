"use server"

import { unstable_cache } from "next/cache"
import { createClient } from "@/lib/supabase/server"
import { getEmpreendimentosSelectionList } from "@/lib/api-client"
import { startOfDay, endOfDay } from "date-fns"
import { z } from "zod"
import { debugLog } from "@/lib/debug-logger"

/**
 * Zod Schema for validation
 */
const uploadSchema = z.object({
    empreendimento_id: z.string().uuid("ID de empreendimento inválido"),
    titulo: z.string().min(3, "O título deve ter pelo menos 3 caracteres").max(200, "O título é muito longo"),
    servico_id: z.string().uuid("ID de serviço inválido").nullable().optional(),
    uploaded_by_name: z.string().min(2, "Nome muito curto").max(100, "Nome muito longo"),
    uploaded_by_email: z.string().email("E-mail inválido")
});

/**
 * Validates the first few bytes of a file to ensure it matches its declared type.
 */
async function validateMagicBytes(file: File): Promise<{ isValid: boolean; detectedType?: string }> {
    const buffer = await file.slice(0, 8).arrayBuffer();
    const bytes = new Uint8Array(buffer);
    const hex = Array.from(bytes).map(b => b.toString(16).padStart(2, '0')).join('').toUpperCase();

    // PDF: %PDF (25 50 44 46)
    if (hex.startsWith('25504446')) return { isValid: true, detectedType: 'application/pdf' };
    
    // JPEG: FF D8 FF
    if (hex.startsWith('FFD8FF')) return { isValid: true, detectedType: 'image/jpeg' };
    
    // PNG: 89 50 4E 47
    if (hex.startsWith('89504E47')) return { isValid: true, detectedType: 'image/png' };

    return { isValid: false };
}

/**
 * Sanitizes a filename to be safe for storage.
 */
function sanitizeFilename(filename: string): string {
    // 1. Remove directory traversal
    let safeName = filename.replace(/^.*[\\\/]/, '');
    
    // 2. Split name and extension
    const parts = safeName.split('.');
    const ext = parts.length > 1 ? parts.pop() : '';
    const base = parts.join('.');

    // 3. Normalize base name: alphanumeric, dash, underscore only
    const normalizedBase = base
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '') // Remove accents
        .replace(/[^a-zA-Z0-9\-_]/g, '_') // Replace non-safe chars with underscore
        .substring(0, 80); // Limit length

    return ext ? `${normalizedBase}.${ext.toLowerCase().substring(0, 10)}` : normalizedBase;
}

export async function getEmpreendimentosExterno(search?: string) {
    const supabase = await createClient()
    const data = await getEmpreendimentosSelectionList(supabase)
    return data || []
}

export async function getServicosAcompanhamentoExterno(empreendimentoId: string) {
    const supabase = await createClient()
    const { data, error } = await supabase
        .from('servicos')
        .select('id, descricao, codigo, status')
        .eq('empreendimento_id', empreendimentoId)
        .eq('acompanha_fisico', true)
        .order('descricao')

    if (error) {
        console.error("Erro ao buscar servicos fisicos externos:", error)
        return []
    }
    return data || []
}

export async function submitUploadExterno(formData: FormData) {
    debugLog(`[submitUploadExterno] INICIADO`)
    const supabase = await createClient()

    // 1. Extract and Validate Metadata with Zod
    const rawData = {
        empreendimento_id: formData.get("empreendimento_id"),
        titulo: formData.get("titulo"),
        servico_id: formData.get("servico_id") || null,
        uploaded_by_name: formData.get("uploaded_by_name"),
        uploaded_by_email: formData.get("uploaded_by_email")
    };

    const result = uploadSchema.safeParse(rawData);
    if (!result.success) {
        return { success: false, error: result.error.errors[0].message };
    }

    const { empreendimento_id, titulo, servico_id, uploaded_by_name, uploaded_by_email } = result.data;

    // 2. Validate File
    const file = formData.get("file") as File;
    if (!file || !(file instanceof File)) {
        return { success: false, error: "Arquivo não fornecido ou inválido." };
    }

    // Size limit: 10MB
    if (file.size > 10 * 1024 * 1024) {
        return { success: false, error: "O arquivo excede o limite de 10MB." };
    }

    // Magic Bytes Validation
    const magic = await validateMagicBytes(file);
    if (!magic.isValid) {
        return { success: false, error: "Tipo de arquivo não permitido. Apenas PDF, JPEG e PNG são aceitos." };
    }

    try {
        // 3. Generate Sequential Number
        const hoje = new Date()
        const inicioDia = startOfDay(hoje).toISOString()
        const fimDia = endOfDay(hoje).toISOString()

        const { count, error: countError } = await supabase
            .from('empreendimento_anexos')
            .select('*', { count: 'exact', head: true })
            .eq('empreendimento_id', empreendimento_id)
            .gte('created_at', inicioDia)
            .lte('created_at', fimDia)

        if (countError) throw new Error(`Erro na contagem: ${countError.message}`);
        const proximoNumero = (count || 0) + 1;

        // 4. Secure Storage Path
        // We use a UUID for the actual filename to prevent any client-side injection or overwrites
        const fileExt = file.name.split('.').pop()?.toLowerCase() || 'bin';
        const secureFileName = `${crypto.randomUUID()}.${fileExt}`;
        const filePath = `${empreendimento_id}/${secureFileName}`;
        
        // We also sanitize the display name for the database
        const displayFileName = sanitizeFilename(file.name);

        debugLog(`[submitUploadExterno] Uploading: ${filePath} (Original: ${displayFileName})`);

        const { error: uploadError } = await supabase.storage
            .from('empreendimento-anexos')
            .upload(filePath, file, {
                contentType: magic.detectedType,
                upsert: false
            })

        if (uploadError) {
            console.error("[submitUploadExterno]", uploadError)
            return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' };
        }

        // 5. Database Entry
        const { error: insertError } = await supabase
            .from('empreendimento_anexos')
            .insert({
                empreendimento_id: empreendimento_id,
                titulo: titulo,
                numero: proximoNumero,
                caminho_arquivo: filePath,
                tamanho_arquivo: file.size,
                tipo_arquivo: magic.detectedType || file.type,
                perfil_id: null,
                servico_id: servico_id || null,
                uploaded_by_name: uploaded_by_name,
                uploaded_by_email: uploaded_by_email
            })

        if (insertError) {
            // Cleanup storage on DB failure
            await supabase.storage.from('empreendimento-anexos').remove([filePath])
            console.error("[submitUploadExterno]", insertError)
            return { success: false, error: 'Ocorreu um erro interno. Por favor, contate o suporte.' };
        }

        return { success: true };
    } catch (error: any) {
        console.error("[submitUploadExterno] Fatal Error:", error);
        return { success: false, error: "Ocorreu um erro interno no processamento do arquivo." };
    }
}
