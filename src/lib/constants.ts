export const TIPOS_SERVICO = [
    "Ambiental",
    "Auditoria",
    "Apoio Gerenciamento",
    "Consultoria",
    "Desapropriações",
    "Execução de Obras",
    "Execução de Projeto",
    "Inspeções",
    "Interferências",
    "Receita",
    "Repasse"
] as const

export const STATUS_CONTRATO = [
    "A Licitar",
    "Aguard. Definições Externas",
    "Andamento",
    "Automático Op. Urb.",
    "Conceito",
    "Concluído",
    "DEA - Pendências",
    "Em Estudo",
    "Em Licitação",
    "Incorporado na Obra",
    "Não Prosseguirá",
    "Proposta",
    "Suspenso",
    "Transferido"
] as const

export const MAP_TIPOS_SERVICO = TIPOS_SERVICO.reduce((acc, val) => ({ ...acc, [val]: val }), {} as Record<typeof TIPOS_SERVICO[number], typeof TIPOS_SERVICO[number]>)
