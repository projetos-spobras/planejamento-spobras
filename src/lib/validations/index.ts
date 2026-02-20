
import { z } from "zod"
import { TIPOS_SERVICO, STATUS_CONTRATO } from "@/lib/constants"

// --- EMPREENDIMENTOS ---
export const empreendimentoSchema = z.object({
    nome: z.string().min(3, "Nome deve ter pelo menos 3 caracteres"),
    codigo: z.string().min(1, "Código é obrigatório"),
    descricao: z.string().optional(),
    localizacao: z.string().optional(),
    gerencia_id: z.string().optional(), // Using string for now, could be enum
    status: z.enum(["Planejamento", "Em Execução", "Concluído", "Suspenso"]).optional(),
    valor_total: z.coerce.number().min(0, "Valor não pode ser negativo"),
    data_inicio: z.date().optional().nullable(),
    data_fim: z.date().optional().nullable(),
})

export type EmpreendimentoFormValues = z.infer<typeof empreendimentoSchema>

// --- CONTRATOS ---
export const contratoSchema = z.object({
    numero: z.string().min(1, "Número do contrato é obrigatório"),
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]]),
    objeto: z.string().optional(),
    contratada: z.string().min(1, "Nome da contratada é obrigatório"),
    status: z.enum(STATUS_CONTRATO).optional(),
    valor_total: z.coerce.number().min(0, "Valor não pode ser negativo"),
    data_inicio: z.date().optional(),
    data_fim: z.date().optional(),
    contrato_pai_id: z.string().uuid().optional().nullable(),
})

export type ContratoFormValues = z.infer<typeof contratoSchema>

// --- LOTES ---
export const loteSchema = z.object({
    nome: z.string().min(1, "Nome do lote é obrigatório"),
    contrato_id: z.string().uuid("Selecione um contrato válido"),
    descricao: z.string().optional(),
})

export type LoteFormValues = z.infer<typeof loteSchema>

// --- EMPENHOS ---
export const empenhoSchema = z.object({
    numero: z.string().optional(),
    valor: z.coerce.number().min(0, "Valor não pode ser negativo"),
    data_empenho: z.date().optional(),
    tipo_vinculo: z.enum(['empreendimento', 'contrato', 'lote']).optional().nullable(),
    vinculo_id: z.string().uuid().optional().nullable(),
})

export type EmpenhoFormValues = z.infer<typeof empenhoSchema>

// --- PLANEJAMENTO FASES ---
export const planejamentoFaseSchema = z.object({
    empreendimento_id: z.string().uuid("Selecione um empreendimento"),
    fase: z.string().min(1, "Fase é obrigatória"),
    tipo_fase: z.enum(['receita', 'despesa', 'execução']).nullable(),
    data_inicio: z.date().optional(),
    data_fim: z.date().optional(),
    valor_planejado: z.coerce.number().min(0, "Valor não pode ser negativo"),
    ordem: z.coerce.number().optional(),
    descricao: z.string().optional().nullable(),
    responsavel: z.string().optional().nullable(),
    fase_predecessora_id: z.string().uuid().optional().nullable(),
    dias_folga: z.coerce.number().optional().nullable(),
})

export type PlanejamentoFaseFormValues = z.infer<typeof planejamentoFaseSchema>

// --- SERVIÇOS ---
export const servicoSchema = z.object({
    contrato_id: z.string().uuid().optional().nullable(),
    empreendimento_id: z.string().uuid().optional(),
    codigo: z.string().optional(),
    descricao: z.string().optional(), // Now optional
    tipo: z.enum([...TIPOS_SERVICO] as [string, ...string[]], {
        message: "Selecione um tipo válido"
    }),
    valor_total: z.coerce.number().min(0).optional(), // Valor Estimado
    // Campos removidos da UI mas mantidos opcionais no schema para compatibilidade se vierem do banco
    unidade: z.string().optional(),
    quantidade: z.coerce.number().optional(),
    preco_unitario: z.coerce.number().optional(),
    status: z.string().optional(),
})

export type ServicoFormValues = z.infer<typeof servicoSchema>
