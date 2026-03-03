# Manual de Correção - Erro na Inicialização

O erro `PathError: Missing parameter name at index 1: *` ocorre devido a uma incompatibilidade de versão na biblioteca de rotas quando executado em versões mais recentes do Node.js/Windows.

Já apliquei a correção no código do arquivo `server.js`.

## Passos para Corrigir e Rodar

1.  **Atualizar o Código**:
    *   Certifique-se de que o arquivo `server.js` foi atualizado (meus comandos já agendaram essa alteração).
    *   Se precisar editar manualmente: Troque `app.get('*', ...)` por `app.use(...)` no final do arquivo.

2.  **Executar os Comandos no Terminal**:

    Abra o PowerShell na pasta `C:\ARQUIVOS01\mapaspobras-main` e execute na ordem:

    ```powershell
    # 1. Parar processos anteriores (Ctrl+C se estiver rodando)

    # 2. Reconstruir o frontend (Garante que a pasta dist existe)
    npm run build

    # 3. Rodar o servidor de aplicação (Site)
    npm run start
    ```

    *O servidor deve iniciar com a mensagem: `🚀 Server running at http://localhost:3000`*

    ```powershell
    # 4. (Em outro terminal) Rodar a sincronização
    npm run start:sync
    ```

## Resumo da Solução Técnica

Substituímos a rota curinga `app.get('*')` por um middleware global `app.use()` no final da pilha de execução. Isso faz com que o Express redirecione qualquer requisição não atendida (arquivos estáticos) para o `index.html`, funcionando como fallback para SPA sem conflitar com o analisador de rotas (regex).
