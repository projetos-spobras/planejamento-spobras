# Guia de Publicação na Intranet (URL Amigável)

Este documento descreve como configurar o **IIS (Internet Information Services)** no Windows Server para servir a aplicação Node.js através de uma URL amigável (sem porta :3000) e compactada.

## Cenário Atual
*   **IIS e Módulos (URL Rewrite/ARR)**: Já instalados.
*   **Site no IIS**: Já criado (`MapaObras`).
*   **Aplicação Node.js**: Rodando via PM2.

## Objetivo
Configurar o IIS para funcionar como "Proxy Reverso", direcionando os acessos de `http://mapaobras` (Porta 80) para `localhost:3000` (Node.js/PM2).

## 1. Verificações Iniciais

### 1.1. Verificar o Backend (PM2)
Certifique-se de que o sistema está online no servidor:
1.  Abra o PowerShell.
2.  Execute `pm2 status`.
3.  Verifique se `mapa-server` está com status `online`.
4.  Teste no navegador do próprio servidor: `http://localhost:3000`.

### 1.2. Habilitar Proxy no ARR (Se ainda não fez)
Mesmo com o módulo instalado, é preciso ativar a função de proxy:
1.  No **Gerenciador do IIS**, clique no nome do **Servidor** (raiz).
2.  Abra **Application Request Routing Cache**.
3.  No menu direito, clique em **Server Proxy Settings**.
4.  Garanta que **Enable proxy** está marcado. Clique em **Apply**.

## 2. Configurando o Redirecionamento (Proxy)

Como o site `MapaObras` já existe, faremos apenas a regra de roteamento.

### 2.1. Criar Regra de Proxy Reverso
1.  No Gerenciador do IIS, clique no site **MapaObras**.
2.  No painel central, dê duplo clique em **URL Rewrite**.
3.  No menu da direita (*Actions*), clique em **Add Rule(s)...**.
4.  Selecione **Reverse Proxy** e clique em OK.
    *   *(Se não aparecer essa opção, verifique o passo 1.2 acima)*.
5.  Preencha:
    *   **Inbound Rules - Server name or IP address**: `localhost:3000`
    *   Desmarque a opção **Enable SSL Offloading** (a menos que esteja configurando HTTPS no IIS).
6.  Clique em **OK**.

Agora, qualquer acesso a `http://seuservidor/` (no site MapaObras) será entregue pelo Node.js.

### 2.2. Otimização (Compressão)
Como já habilitamos GZIP no Node.js (via pacote `compression`), recomenda-se desativar a compressão do IIS para este site para evitar conflitos ou trabalho duplo (embora o IIS geralmente detecte).
1.  No site `MapaObras`, clique em **Compression**.
2.  Desmarque as caixas de compressão dinâmica e estática.

## 3. Acesso via URL Amigável (Como funciona)

Configurar o "Nome do Host" no IIS (Passo 1.1) diz ao servidor: *"Responda quando alguém chamar por este nome"*. Porém, para que os computadores da rede **encontrem** o servidor por esse nome, é necessário DNS.

### 3.1. Opção A: Usar o Nome do Servidor (Mais Fácil)
Se o computador já se chama, por exemplo, `SRV-SPOBRAS-01`, você pode acessar direto por `http://SRV-SPOBRAS-01/`.
*   **No IIS**: Deixe o "Nome do host" **em branco** na configuração do site. Assim ele responde por *qualquer* nome ou IP que chegar nele.

### 3.2. Opção B: Criar um Nome Personalizado (ex: `mapaobras`)
Se você quer um nome bonito que não é o nome real da máquina:
1.  **No IIS**: Coloque `mapaobras` no campo "Nome do host".
2.  **Na Rede (Obrigatório)**: A equipe de TI deve criar um apontamento no DNS da empresa (`mapaobras` -> `IP_DO_SERVIDOR`).
    *   *Sem isso, os outros computadores não sabem quem é "mapaobras".*

### 3.3. Teste Local (Arquivo Hosts)
Para testar no **seu** computador antes da TI criar o DNS:
1.  Abra o Bloco de Notas como Administrador.
2.  Edite `C:\Windows\System32\drivers\etc\hosts`.
3.  Adicione ao final: `127.0.0.1 mapaobras`.
4.  Agora você consegue acessar `http://mapaobras` navegador do servidor.

### Resumo do Fluxo
Usuario (`http://mapaobras`) --> DNS --> IIS (Porta 80) --> Regra Proxy --> Node.js (Porta 3000).

---

## Solução de Problemas

*   **Erro 502.3 (Bad Gateway)**: O Node.js não está rodando na porta 3000 ou firewall bloqueando loopback.
*   **Lentidão**: Verifique se o módulo `compression` foi instalado no projeto Node (`npm install compression` e atualize `server.js`).
