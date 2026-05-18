
export type Empreendimento = {
    id: string
    nome: string
    codigo: string | null
    descricao: string | null
    localizacao: string | null
    gerencia_id: string | null
    status: string | null
    status_nome?: string | null
    valor_total: number
    programa: string | null
    subprefeitura: string | null
    gerencia: string | null
    id_programa: number | null
    id_distrito: number | null
    data_inicio: string | null
    data_fim: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type Contrato = {
    id: string
    numero: string
    tipo: string | null
    objeto: string | null
    contratada: string | null
    status: string | null
    valor_total: number
    valor_aditamento?: number
    valor_reajuste?: number
    indice_reajuste?: string | null
    percentual_reajuste?: string | null
    indice_nome?: string | null
    valor_original?: number
    data_inicio: string | null
    data_fim: string | null
    contrato_pai_id: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type Lote = {
    id: string
    nome: string
    tipo: 'GERAL' | 'OAE' | 'ESCOLA' | null
    contrato_id: string | null
    descricao: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type Empenho = {
    id: string
    numero: string | null
    valor: number
    data_empenho: string | null
    tipo_vinculo: 'empreendimento' | 'contrato' | 'lote' | null
    vinculo_id: string | null
    medicao_id: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type MedicaoStatus = 'rascunho' | 'enviada' | 'aprovada' | 'reprovada'

export type Medicao = {
    id: string
    servico_id: string
    empreendimento_id: string | null
    contrato_id: string | null
    lote_id: string | null
    numero_medicao: number
    data_medicao: string
    valor_medido: number
    percentual_executado: number | null
    status: MedicaoStatus
    observacoes: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type PlanejamentoFase = {
    id: string
    empreendimento_id: string
    fase: string | null
    tipo_fase: 'receita' | 'despesa' | 'execução' | null
    data_inicio: string | null
    data_fim: string | null
    peso_percentual: number | null
    valor_planejado: number | null
    ordem: number | null
    descricao: string | null
    responsavel: string | null
    fase_predecessora_id: string | null
    dias_folga: number | null
    servico_id?: string | null
    created_at: string
    updated_at: string
    created_by: string | null
}

export type Servico = {
    id: string
    contrato_id: string | null
    empreendimento_id?: string | null
    codigo: string | null
    descricao: string
    unidade: string | null
    quantidade: number | null
    preco_unitario: number | null
    valor_total: number | null
    tipo: string | null
    status: string | null
    subtipo_receita: string[] | null
    data_inicio?: string | null
    data_fim?: string | null
    duracao_dias?: number | null
    acompanha_fisico?: boolean
    acompanha_financeiro?: boolean
    aditamento_anos?: number | null
    aditamento_formalizado?: boolean | null
    valor_contratual?: number | null
    distribuicao_financeira?: DistribuicaoFinanceira[]
    subtipo_ambiental?: string[] | null
    subtipo_desapropriacao?: string[] | null
    ordem?: number | null
    created_at: string
    updated_at: string
}

export type DistribuicaoFinanceira = {
    id: string
    servico_id: string
    ano: number
    mes: number
    valor: number
    fonte_recurso: string | null
    created_at: string
    updated_at: string
}
