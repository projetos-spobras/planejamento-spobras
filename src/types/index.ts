
export type Empreendimento = {
    id: string
    nome: string
    codigo: string | null
    descricao: string | null
    localizacao: string | null
    gerencia_id: string | null
    status: string | null
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
    contrato_id: string
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
    valor_planejado: number
    ordem: number | null
    descricao: string | null
    responsavel: string | null
    fase_predecessora_id: string | null
    dias_folga: number | null
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
    created_at: string
    updated_at: string
}
