# Manual de Requisitos e Implantação - Sistema de Mapa de Obras (Intranet Local)

Este documento detalha a implantação do sistema "Mapa de Obras SPObras" em ambiente 100% local (Intranet), sem dependências de nuvem (Supabase/Vercel).

## 1. Visão Geral

*   **Arquitetura**: Aplicação SPA (Single Page Application) servida por Node.js.
*   **Banco de Dados**: SQL Server (SPOBRAS03). A aplicação lê dados de um arquivo JSON local gerado periodicamente.
*   **Servidor de Aplicação**: Windows Server.
*   **Caminho de Instalação**: `C:\ARQUIVOS01`.

## 2. Estrutura de Pastas

A aplicação deve ser instalada na pasta de backup indicada pela TI:
`C:\ARQUIVOS01\mapaspobras-main`

## 3. Configuração do Servidor

### Pré-requisitos
*   **Node.js (v18+)** instalado no servidor.
*   Acesso liberado ao servidor `SPOBRAS03` (Porta 1433).
*   Porta HTTP liberada para a Intranet (padrão 3000 ou 80).

### Passo a Passo de Instalação

1.  **Transferência de Arquivos**:
    *   Copie toda a pasta do projeto para `C:\ARQUIVOS01\mapaspobras-main`.

2.  **Instalação de Dependências**:
    *   Abra o **PowerShell** ou **CMD** na pasta `C:\ARQUIVOS01\mapaspobras-main`.
    *   Execute:
        ```powershell
        npm install
        ```

3.  **Configuração (.env)**:
    *   Crie o arquivo `.env` na raiz com as credenciais (se necessário para configurações extras, mas a conexão SQL é interna no script):
    ```ini
    PORT=3000
    ```

4.  **Compilação (Build)**:
    *   Gere a versão otimizada do frontend:
        ```powershell
        npm run build
        ```
    *   *Isso criará a pasta `dist`.*

## 4. Executando a Aplicação

Para colocar o sistema no ar, você precisa rodar dois processos:

### A. Servidor Web (Frontend)
Este processo serve o site para os usuários.
```powershell
npm run start
```
*Acesse no navegador: `http://localhost:3000` (ou IP do servidor).*

### B. Agente de Sincronização (Backend)
Este processo atualiza os dados do SQL Server 3x ao dia (07h, 12h, 19h).
```powershell
npm run start:sync
```
*Mantenha este terminal aberto ou configure via PM2 (Veja seção 6).*

---

## 5. Manutenção e Logs
*   Os dados são salvos em: `public/data/data.json`.
*   Logs de sincronização aparecem no console do agente.
*   Para forçar uma atualização imediata, execute: `node sync-local.js`.

## 6. Configuração de Serviço Contínuo (PM2)
Para não precisar manter janelas abertas, use o **PM2**.

### 6.1. Instalação do PM2
No PowerShell (como Administrador):
```powershell
npm install -g pm2
```

### 6.2. Criar Arquivo de Configuração
Crie um arquivo chamado `ecosystem.config.cjs` na raiz da pasta `mapaspobras-main` com o seguinte conteúdo:

```javascript
module.exports = {
  apps: [
    {
      name: "mapa-server",
      script: "./server.js",
      instances: 1,
      autorestart: true,
      max_memory_restart: '1G',
      env: {
        NODE_ENV: "production",
        PORT: 3000
      }
    },
    {
      name: "mapa-sync",
      script: "./scheduler.js",
      instances: 1,
      autorestart: true,
      max_memory_restart: '500M'
    }
  ]
};
```

### 6.3. Iniciar os Serviços
```powershell
pm2 start ecosystem.config.cjs
```
*(Isso iniciará tanto o site quanto o agendador)*

### 6.4. Comandos Úteis
*   **Ver Status**: `pm2 status`
*   **Ver Logs**: `pm2 logs`
*   **Reiniciar**: `pm2 restart all`
*   **Salvar para reiniciar com Windows**:
    1.  Instale o pacote: `npm install pm2-windows-startup -g`
    2.  Execute: `pm2-startup install`
    3.  Execute: `pm2 save`