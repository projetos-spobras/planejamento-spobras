# Documentação Técnica: Sistema Planejamento SPObras

Este documento fornece uma visão consolidada da arquitetura, tecnologias e funcionalidades do sistema Planejamento SPObras.

## 1. Resumo Técnico e Arquitetura

O sistema é uma plataforma de gestão de empreendimentos e contratos, projetada para consolidar dados financeiros e físicos da SPObras.

*   **Framework:** Next.js (App Router)
*   **Linguagem:** TypeScript
*   **Banco de Dados:** Supabase (PostgreSQL)
*   **Infraestrutura:** IIS (Internet Information Services) como Proxy Reverso para o ambiente Windows.
*   **Design System:** Tailwind CSS + Shadcn UI para componentes de interface.

## 2. Recursos Tecnológicos e APIs

### APIs Internas (Next.js API Routes)
*   **`/api/contrato-financeiro`**: Atua como uma camada de integração (Proxy) com as APIs Legadas da SPObras, permitindo a extração de dados de contratos, medições e empenhos em tempo real.
*   **`/api/ai-agent`**: Interface para o **Sid AI**, o assistente inteligente que processa dados do empreendimento para fornecer resumos e insights.
*   **`/api/sync-contracts`**: Rotina de sincronização entre a base legada e a base local (Supabase).

### Integração com Supabase
*   **Auth**: Gerenciamento de sessões via Supabase Auth (JWT).
*   **Database**: PostgreSQL com suporte a JSONB para armazenar distribuições financeiras complexas.

## 3. Segurança e RLS (Row Level Security)

A segurança do sistema é baseada em três pilares:

### Row Level Security (RLS)
Todas as tabelas críticas possuem políticas de RLS ativas:
*   **tb_perfis**: Apenas o próprio usuário pode ver seu perfil, ou administradores podem ver todos.
*   **audit_log**: Acesso restrito apenas a usuários com `nivel_acesso = 'Admin'`.
*   **Tabelas de Negócio**: Políticas garantem que apenas usuários autenticados e com os módulos permitidos possam visualizar ou editar dados.

### Padrões de Server Actions
O sistema utiliza dois padrões rigorosos para mutações de dados:
*   **Padrão A (Autenticação Explícita)**: Toda Server Action verifica a sessão do usuário antes de qualquer operação.
*   **Padrão B (Tratamento de Erros)**: Mensagens de erro são higienizadas para não expor detalhes técnicos do banco de dados (PII Leakage Prevention).

## 4. Conformidade e Auditoria (LGPD)

O sistema foi desenhado para estar em total conformidade com a **Lei Geral de Proteção de Dados (LGPD)**:

*   **Rastreabilidade (Audit Log)**: Toda inserção, atualização ou deleção nas tabelas `contratos`, `empenhos`, `servicos` e `lotes` é registrada automaticamente via triggers, capturando o ID do usuário, IP e o "antes/depois" dos dados.
*   **Anonimização**: Rotina automatizada que descaracteriza dados de usuários inativos por mais de 2 anos.
*   **Portabilidade**: Função dedicada para exportação de todos os dados vinculados a um CPF/ID, atendendo às solicitações do titular.

## 5. Módulos e Subtelas

### Módulo: Empreendimentos (Dashboard e Lista)
*   **Lista Geral**: Visão consolidada de todos os projetos com filtros avançados (Fase, Gerência, Status Financeiro).
*   **Detalhes do Empreendimento**:
    *   **KPIs de Resumo**: 4 cards unificados (Contratos, Serviços, Exec. Planejada, Avanço Financeiro).
    *   **Guia Serviços**: Gestão de cronogramas, pesos percentuais e progresso físico.
    *   **Guia Financeira**: Comparativo detalhado entre Medido vs. Pago vs. Empenhado.
    *   **Guia Meio Ambiente**: Controle de licenças e condicionais ambientais.
    *   **Guia Desapropriações**: Acompanhamento de processos judiciais e amigáveis.

### Módulo: Lotes
*   Agregação de serviços em lotes contratuais para gestão de aditamentos e reajustes globais.
*   Funcionalidade de sincronização manual e automática com a API SPObras.

### Módulo: Administração de Usuários
*   Gestão de perfis e níveis de acesso (Admin, Gestor, Analista).
*   Controle granular de acesso por módulos (Ex: Usuário pode ver Meio Ambiente mas não Financeiro).

### Módulo: Sid AI (Copilot)
*   Assistente lateral presente nas telas de detalhes para análise de dados estruturados e geração de relatórios de status instantâneos.
