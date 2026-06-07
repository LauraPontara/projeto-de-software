<!-- Este template foi criado para servir como referência e pode ser facilmente adaptado para diferentes projetos de desenvolvimento -->

<!-- [![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=99999999&assignment_repo_type=AssignmentRepo) [![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=99999999)
-->

<a href="https://classroom.github.com/online_ide?assignment_repo_id=99999999&assignment_repo_type=AssignmentRepo"><img src="https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg" width="200"/></a> <a href="https://classroom.github.com/open-in-codespaces?assignment_repo_id=99999999"><img src="https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg" width="250"/></a>

---

# 🏷️ Elo 👨‍💻

> [!NOTE]
> Plataforma SaaS de gestão de comunidades para creators — gerencie membros, eventos, campanhas e acompanhe a saúde da sua comunidade em um único lugar.  
> Crie uma **logo** para o projeto que represente a aplicação em questão.

<table>
  <tr>
    <td width="800px">
      <div align="justify">
        O <b>Elo</b> é uma plataforma SaaS de gestão de comunidades voltada para creators e community managers. Ela permite que organizadores criem e gerenciem suas comunidades, publiquem eventos com venda de ingressos, administrem membros, executem campanhas e acompanhem o engajamento e a saúde das suas comunidades por meio de insights em tempo real. Este trabalho documenta a <i>arquitetura de software</i> do Elo como projeto final da disciplina <b>Projeto de Software</b> do curso de <b>Engenharia de Software da PUC Minas</b>, apresentando diagramas UML, decisões arquiteturais e modelagem do domínio. O nome "Elo" é fictício e utilizado para fins acadêmicos — a arquitetura documentada é baseada em um sistema real em produção.
      </div>
    </td>
    <td>
      <div>
        <img src="https://joaopauloaramuni.github.io/image/logo_ES_vertical.png" alt="Logo do Projeto" width="120px"/>
      </div>
    </td>
  </tr> 
</table>

---

## 🚧 Status do Projeto

### Exemplos de badges básicos:

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/LauraPontara/projeto-de-software/main.yml?branch=main)](https://github.com/LauraPontara/projeto-de-software/actions/workflows/main.yml)
[![Test Coverage](https://codecov.io/gh/LauraPontara/projeto-de-software/branch/main/graph/badge.svg)](https://codecov.io/gh/LauraPontara/projeto-de-software)
[![Versão](https://img.shields.io/badge/Versão-v1.0.0-blue)](https://github.com/LauraPontara/projeto-de-software/releases)
[![Licença](https://img.shields.io/github/license/LauraPontara/projeto-de-software)](#licença)

### Outros exemplos de badges:

[![Versão](https://img.shields.io/badge/Versão-v1.0.0-blue?style=for-the-badge)](https://github.com/LauraPontara/projeto-de-software/releases) ![Next.js](https://img.shields.io/badge/Next.js-16-007ec6?style=for-the-badge&logo=nextdotjs&logoColor=white) ![React](https://img.shields.io/badge/React-19-007ec6?style=for-the-badge&logo=react&logoColor=white) ![TypeScript](https://img.shields.io/badge/TypeScript-5-007ec6?style=for-the-badge&logo=typescript&logoColor=white) ![Fastify](https://img.shields.io/badge/Fastify-5-007ec6?style=for-the-badge&logo=fastify&logoColor=white) ![Node.js](https://img.shields.io/badge/Node.js-24-007ec6?style=for-the-badge&logo=nodedotjs&logoColor=white) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-17-007ec6?style=for-the-badge&logo=postgresql&logoColor=white) ![GitHub repo size](https://img.shields.io/github/repo-size/LauraPontara/projeto-de-software?style=for-the-badge&logo=files) ![GitHub last commit](https://img.shields.io/github/last-commit/LauraPontara/projeto-de-software?style=for-the-badge&logo=clockify)

---

## 📚 Índice
- [Links Úteis](#-links-úteis)
- [Sobre o Projeto](#-sobre-o-projeto)
- [Funcionalidades Principais](#-funcionalidades-principais)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Arquitetura](#-arquitetura)
  - [Exemplos de diagramas](#exemplos-de-diagramas)
- [Instalação e Execução](#-instalação-e-execução)
  - [Pré-requisitos](#pré-requisitos)
  - [Variáveis de Ambiente](#-variáveis-de-ambiente)
     - [1 Back-end (Fastify)](#1-back-end-fastify)
     - [2 Front-end (Next.js)](#2-front-end-nextjs)
     - [3 Exemplos de Variáveis de Ambiente na Vercel](#3-exemplos-de-variáveis-de-ambiente-na-vercel)
  - [Instalação de Dependências](#-instalação-de-dependências)
    - [Front-end (Next.js)](#front-end-nextjs)
    - [Back-end (Fastify)](#back-end-fastify)
  - [Inicialização do Banco de Dados (PostgreSQL)](#-inicialização-do-banco-de-dados-postgresql)
  - [Como Executar a Aplicação](#-como-executar-a-aplicação)
    - [Terminal 1: Back-end (Fastify)](#terminal-1-back-end-fastify)
    - [Terminal 2: Front-end (Next.js)](#terminal-2-front-end-nextjs)
    - [Execução Local Completa com Docker Compose (Incluindo Banco de Dados)](#-execução-local-completa-com-docker-compose-incluindo-banco-de-dados)
    - [Passos para build, inicialização e execução](#-passos-para-build-inicialização-e-execução)
- [Deploy](#-deploy)
- [Estrutura de Pastas](#-estrutura-de-pastas)
- [Demonstração](#-demonstração)
  - [Aplicativo Mobile](#-aplicativo-mobile)
  - [Aplicação Web](#-aplicação-web)
  - [Exemplo de saída no Terminal (para Back-end, API, CLI)](#-exemplo-de-saída-no-terminal-para-back-end-api-cli)
- [Testes](#-testes)
- [Documentações utilizadas](#-documentações-utilizadas)
- [Autores](#-autores)
- [Contribuição](#-contribuição)
- [Agradecimentos](#-agradecimentos)
- [Licença](#-licença)

---

## 🔗 Links Úteis
* 🌐 **Demo Online:** [Acesse a Aplicação Web](<link-da-demo-web>)
  > 💻 **Descrição:** Link para a aplicação em ambiente de produção (Ex: hospedado na Vercel, Netlify ou AWS S3).
* 📱 **Download Mobile:** [App Store](<link-app-store>) | [Google Play](<link-google-play>) | [APK Direto](<link-para-apk-direto>)
  > 📱 **Descrição:** Links diretos para download nas lojas de aplicativos (se aplicável) e para o arquivo de instalação direta no Android (APK).
* 📖 **Documentação:** [Leia a Wiki/Docs](<link-para-docs>)
  > 📚 **Descrição:** Acesso à documentação técnica completa do projeto (Ex: Swagger/OpenAPI para API, ou Wiki interna).

---

## 📝 Sobre o Projeto

O **Elo** é uma plataforma SaaS de gestão de comunidades voltada para creators e community managers (GCs). O sistema resolve um problema central enfrentado por criadores de conteúdo e organizadores de eventos: a **fragmentação das ferramentas de gestão**. Com o Elo, todas as operações — desde a criação do evento até o check-in no dia, passando pelo gerenciamento de membros e campanhas — acontecem em um único ecossistema integrado.

A plataforma é composta por três superfícies principais:

- **Gestor Elo** — painel privado para creators gerenciarem suas comunidades, eventos, membros e campanhas, além de acessar insights sobre engajamento e saúde da comunidade.
- **Checkout Elo** — aplicação pública para listagem de eventos, RSVP e compra de ingressos com pagamento via PIX e cartão de crédito.
- **Backoffice Elo** — painel administrativo interno para operação, suporte e moderação da plataforma.

Este trabalho documenta a **arquitetura de software** do Elo como projeto final da disciplina **Projeto de Software** do curso de **Engenharia de Software da PUC Minas**, apresentando diagramas UML (casos de uso, sequência, componentes, implantação), decisões arquiteturais e modelagem do domínio.

> [!NOTE]
> O nome "Elo" é fictício e utilizado para fins acadêmicos, preservando a identidade da empresa. A arquitetura documentada é baseada em um sistema real em produção.

---

## ✨ Funcionalidades Principais

- 🏘️ **Gestão de Comunidades:** Criação e gerenciamento de comunidades com controle de membros, papéis e privacidade.
- 🎟️ **Eventos e Ingressos:** Criação de eventos com múltiplos lotes de ingressos, RSVP e check-in digital.
- 💳 **Pagamentos Integrados:** Venda de ingressos via PIX e cartão de crédito com integração a gateway de pagamento.
- 📣 **Campanhas:** Criação e gerenciamento de campanhas de comunicação e engajamento para membros da comunidade.
- 📊 **Insights de Comunidade:** Painel com métricas de engajamento, crescimento de membros e saúde da comunidade em tempo real.
- 🔔 **Sistema de Notificações:** Envio de alertas por e-mail e notificações push.
- 🔐 **Autenticação Segura:** Login, cadastro e controle de acesso baseado em papéis com JWT.
- ⚙️ **Painel Administrativo:** Backoffice interno para operação e suporte da plataforma.

---

## 🛠 Tecnologias Utilizadas

As seguintes ferramentas, frameworks e bibliotecas foram utilizados na construção deste projeto. Recomenda-se o uso das versões listadas (ou superiores) para garantir a compatibilidade.

### 💻 Front-end

* **Framework:** [Next.js v16](https://nextjs.org/) (App Router + Server Components + ISR)
* **Biblioteca UI:** [React v19](https://react.dev/)
* **Linguagem:** [TypeScript 5](https://www.typescriptlang.org/) (strict mode)
* **Estilização:** [Tailwind CSS v4](https://tailwindcss.com/)
* **Design System:** Grass (baseado em [Radix UI](https://www.radix-ui.com/) + Tailwind)
* **Gerenciamento de Estado:** [Zustand v5](https://zustand-demo.pmnd.rs/)
* **Fetch Client-side:** [React Query v5](https://tanstack.com/query/latest)
* **Formulários/Validação:** [React Hook Form](https://react-hook-form.com/) + [Zod v4](https://zod.dev/)
* **Gerenciador de Pacotes:** npm

### 🖥️ Back-end

* **Runtime:** [Node.js 24](https://nodejs.org/)
* **Framework HTTP:** [Fastify v5](https://fastify.dev/)
* **Linguagem:** [TypeScript 5](https://www.typescriptlang.org/)
* **ORM / Migrations:** [Drizzle ORM](https://orm.drizzle.team/) + Drizzle Kit
* **Banco de Dados:** [PostgreSQL 17](https://www.postgresql.org/)
* **Autenticação:** JWT via [Supabase Auth](https://supabase.com/docs/guides/auth) (`jose`)
* **Validação:** [Zod v4](https://zod.dev/)
* **Pagamentos:** Gateway de pagamento — PIX + Cartão de Crédito
* **E-mail:** [Resend](https://resend.com/)
* **Injeção de Dependência:** [tsyringe](https://github.com/microsoft/tsyringe)
* **Testes:** [Vitest](https://vitest.dev/)
* **Linting / Formatação:** [Biome](https://biomejs.dev/)
* **Build:** tsup (ESM)
* **Gerenciador de Pacotes:** pnpm

### 📱 Mobile (Opcional)

* **Framework:** [React Native](https://reactnative.dev/) + [Expo](https://expo.dev/)
* **Design System:** Grass Mobile (React Native + Tailwind)

### ⚙️ Infraestrutura & DevOps

* **Banco Gerenciado:** [Supabase](https://supabase.com/) (PostgreSQL + Auth + Storage)
* **Containerização:** [Docker](https://www.docker.com/) + Docker Compose
* **Cloud:** [Google Cloud Run](https://cloud.google.com/run) (Back-end em container)
* **CI/CD:** [GitHub Actions](https://github.com/features/actions)

---

## 🏗 Arquitetura

O Elo adota uma arquitetura baseada em **serviços desacoplados**, onde cada superfície (Gestor, Checkout, Backoffice) é uma aplicação Next.js independente que se comunica com um backend centralizado (Fastify API). O banco de dados PostgreSQL é gerenciado via Supabase, que também provê autenticação e storage. O backend é implantado em containers no Google Cloud Run.

Principais padrões adotados:
- **Repository pattern** via Drizzle ORM para isolamento do acesso a dados.
- **Service Layer** para encapsulamento das regras de negócio.
- **DTOs e validação com Zod** em todas as bordas da API.
- **Row-Level Security (RLS)** no Supabase para controle de acesso por tenant.
- **Server Components** no Next.js para leitura de dados sem expor tokens ao cliente.

### Exemplos de diagramas

Para melhor visualização e entendimento da estrutura do sistema, os diagramas principais estão organizados lado a lado.

| Diagrama de Arquitetura | Detalhe da Arquitetura |
| :---: | :---: |
| **Visão Geral (Macro)** | **Camada de Serviço (Micro)** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Diagrama de Visão Geral do Sistema" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Diagrama de Componentes ou Serviço X" width="120px" height="120px"> |
| **Modelo de Dados (Entidades)** | **Fluxo de Autenticação** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Diagrama de Entidade-Relacionamento (DER)" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Diagrama de Sequência de Login" width="120px" height="120px"> |
| **Infraestrutura (Cloud)** | **API Gateway (Rotas)** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Diagrama de Deploy na Google Cloud" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Mapa de Endpoints da API" width="120px" height="120px"> |

---

## 🔧 Instalação e Execução

### Pré-requisitos
Certifique-se de que o usuário tenha o ambiente configurado.

* **Node.js:** Versão **20 LTS** ou superior
* **pnpm:** Versão **9+** (Back-end)
* **npm:** Versão **10+** (Front-ends)
* **Docker** (Opcional, mas **altamente recomendado** para rodar o Banco de Dados)

---

### 🔑 Variáveis de Ambiente

Crie arquivos `.env` específicos e/ou configure as variáveis de ambiente no seu sistema para cada parte da aplicação.

#### 1 Back-end (Fastify)

Configure estas variáveis em um arquivo **`.env`** na raiz do back-end.

| Variável | Descrição | Exemplo |
| :--- | :--- | :--- |
| `NODE_ENV` | Ambiente de execução. | `development` |
| `AUTH_JWT_SECRET` | Chave secreta JWT do projeto Supabase (base64). | `<base64-do-jwt-secret>` |
| `DATABASE_URL` | URL de conexão PostgreSQL. | `postgresql://user:pass@localhost:5432/elo` |
| `PAYMENT_API_KEY` | Chave de API do gateway de pagamento (sandbox ou produção). | `<api-key>` |
| `RESEND_API_KEY` | Chave de API do Resend para envio de e-mails. | `re_<chave>` |

#### 2 Front-end (Next.js)

Crie um arquivo **`.env.local`** na raiz de cada aplicação front-end.

| Variável | Descrição | Exemplo |
| :--- | :--- | :--- |
| `NEXT_PUBLIC_SUPABASE_URL` | URL do projeto Supabase. | `https://<id>.supabase.co` |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | Chave anônima do Supabase. | `eyJ...` |
| `SUPABASE_SERVICE_ROLE_KEY` | Chave de serviço (server-only). | `eyJ...` |
| `NEXT_PUBLIC_API_URL` | URL base do back-end Fastify. | `http://localhost:3000` |

---

#### 3. Exemplos de Variáveis de Ambiente na Vercel

A Vercel permite configurar variáveis no painel (Project Settings > Environment Variables).
Aqui estão exemplos comuns utilizadas em aplicações front-end e full-stack:

---

##### **Exemplo 1 – Front-end com Next.js usando API externa**

```
NEXT_PUBLIC_API_URL=https://meu-backend.run.app
NEXT_PUBLIC_SUPABASE_URL=https://<id>.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...
```

---

##### **Exemplo 2 – Aplicação Full-stack (Next.js + Supabase + PostgreSQL)**

```
DATABASE_URL=postgresql://admin:senha@host:5432/elo
SUPABASE_SERVICE_ROLE_KEY=eyJ...
AUTH_JWT_SECRET=<base64>
```

---

##### **Exemplo 3 – Integração com APIs externas**

```
PAYMENT_API_KEY=<api-key-gateway>
RESEND_API_KEY=re_<chave>
```

---

##### **Exemplo 4 – Frontend com Next.js (variáveis públicas)**

```
NEXT_PUBLIC_SUPABASE_URL=https://<id>.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...
NEXT_PUBLIC_API_URL=https://elo-api.run.app
```

> **Obs:** As variáveis prefixadas com `NEXT_PUBLIC_` são expostas ao bundle do cliente. Variáveis sem esse prefixo ficam disponíveis apenas no servidor (Server Components e API Routes).

---

Para adicionar essas variáveis:

1.  Acesse a página de Environment Variables do seu projeto no Vercel (ex.: `https://vercel.com/<seu-usuario>/<seu-projeto>/settings/environment-variables`)
2.  Clique em **"Add"** para adicionar cada variável com o nome e valor correspondente.

Alternativamente, se estiver desenvolvendo localmente, crie um arquivo **`.env.local`** dentro da pasta de cada aplicação front-end com o seguinte conteúdo:

```
# URL do back-end rodando localmente
NEXT_PUBLIC_API_URL=http://localhost:3000

# Configuração do Supabase
NEXT_PUBLIC_SUPABASE_URL=https://<id>.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJ...
SUPABASE_SERVICE_ROLE_KEY=eyJ...
```

> 💡 **Localização:** Garanta que este arquivo esteja na raiz de cada aplicação Next.js (ex: `/gestor/.env.local`) para que o Next.js o carregue corretamente.

### 📦 Instalação de Dependências

Clone o repositório e instale as dependências.

1.  **Clone o Repositório:**

```bash
git clone https://github.com/LauraPontara/projeto-de-software
cd projeto-de-software
```

2.  **Instale as Dependências:**

Como o projeto é composto por múltiplas aplicações, instale as dependências de cada uma separadamente.

#### Front-end (Next.js)

Acesse a pasta de cada front-end e instale com npm:

```bash
cd gestor
npm install
cd ../checkout
npm install
cd ../backoffice
npm install
```

#### Back-end (Fastify)

O back-end utiliza **pnpm**:

```bash
cd elo-api
pnpm install
```

---

### 💾 Inicialização do Banco de Dados (PostgreSQL)

O projeto utiliza **PostgreSQL** gerenciado pelo Supabase. Para desenvolvimento local, suba o banco via Docker Compose:

1. **Suba o Container do PostgreSQL:**

```bash
docker compose up -d
```

2. **Execute as Migrações:**

```bash
cd elo-api
pnpm migration:push
```

3. **(Opcional) Popular banco com dados de desenvolvimento:**

```bash
pnpm db:seed
```

---

### ⚡ Como Executar a Aplicação
Execute a aplicação em modo de desenvolvimento em **dois terminais separados**.

#### Terminal 1: Back-end (Fastify)

```bash
cd elo-api
pnpm dev
```
🚀 *O Back-end estará disponível em **http://localhost:3000**. Documentação Swagger em **http://localhost:3000/docs**.*

---

#### Terminal 2: Front-end (Next.js)

```bash
cd gestor
npm run dev
```
🎨 *O Gestor estará disponível em **http://localhost:3009**.*

```bash
cd checkout
npm run dev
```
🎨 *O Checkout estará disponível em **http://localhost:3000**.*

---

#### 🐳 Execução Local Completa com Docker Compose (Incluindo Banco de Dados)

Para uma execução local que inclui o serviço de Back-end (**Fastify**), Front-end (**Next.js**) e o banco de dados **PostgreSQL**, usaremos o **`docker-compose`** para orquestração.

Antes de tudo, certifique-se de que o **Docker Desktop** (no Mac/Windows) ou o **serviço Docker** (em Linux) está em execução.

- **No Mac/Windows**: basta abrir o aplicativo **Docker Desktop**.
- **No Linux**: rode o comando abaixo para iniciar o serviço:

```bash
sudo systemctl start docker
```

---

#### 📦 Passos para build, inicialização e execução

1. Acesse a pasta raiz do projeto (onde o arquivo `docker-compose.yml` está localizado):

```bash
cd /caminho/do/projeto/elo
```

2. Suba todos os serviços (Back-end, Front-end e Banco de Dados) definidos no `docker-compose.yml`:

```bash
docker-compose up --build -d
```

> [!NOTE]
> 💡 O parâmetro `--build` garante que as imagens mais recentes do projeto sejam geradas, e `-d` executa em segundo plano.

3. Verifique se os containers estão rodando:

```bash
docker ps
```

4. **Execute as Migrações do Banco de Dados:**

```bash
docker logs <nome_do_container_backend>
```

5. Abra no navegador:
   O Front-end deve estar acessível na porta configurada no `docker-compose` (Exemplo: <http://localhost:3009>)

6. Para parar e remover todos os containers, redes e volumes (exceto volumes nomeados):

```bash
docker-compose down
```

✅ **Em resumo:** Usar **`docker-compose`** simplifica a execução do ambiente completo, isolando as dependências de **Node.js (Fastify)** e **Next.js (React)** e garantindo que o PostgreSQL esteja disponível.

---

## 🚀 Deploy
Instruções claras para deploy em produção.

1.  **Build do Projeto:**

```bash
# 1. Build do Front-end (Next.js) - Gera os artefatos de produção
cd gestor
npm run build

# 2. Build do Back-end (Fastify/tsup) - Gera o bundle ESM em /dist
cd ../elo-api
pnpm build
```

2.  **Configuração do Ambiente de Produção:** Defina as variáveis de ambiente no seu provedor (Google Cloud Run para o back-end, Vercel para os front-ends).

> 🔑 **Variáveis Cruciais:** Certifique-se de configurar `DATABASE_URL`, `AUTH_JWT_SECRET` e `PAYMENT_API_KEY` para o back-end, e `NEXT_PUBLIC_API_URL` e as chaves do Supabase para os front-ends.

3.  **Execução em Produção:**

```bash
# 🟢 Execução do Back-end Fastify (Node.js ESM)
node dist/index.js

# 🟢 Execução do Front-end (Next.js - via Vercel ou servidor Node)
npm run start
```

---

## 📂 Estrutura de Pastas

Descreva o propósito das pastas principais.

```
.
├── .editorconfig                # ✍️ Padronização de estilo de código.
├── .env.local                   # 🔒 Variáveis SENSÍVEIS do ambiente LOCAL (não versionado).
├── .env.example                 # 🧩 Exemplo de TODAS as variáveis necessárias (sem valores sensíveis).
├── .gitignore                   # 🧹 Ignora arquivos/pastas não versionadas (.env, node_modules, dist, etc.).
├── .github/                     # 🤖 CI/CD (Actions), templates de Issues e Pull Requests.
├── README.md                    # 📘 Documentação principal do projeto.
│
├── /elo-api                     # 📁 Back-end Fastify
│   ├── .env.example             # 🧩 Variáveis de ambiente do Back-end.
│   ├── Dockerfile               # 🐳 Docker build do Back-end.
│   ├── /src
│   │   ├── /routes              # 🎮 Endpoints REST (Fastify plugins).
│   │   ├── /services            # ⚙️ Regras e lógica de negócio.
│   │   ├── /repositories        # 🗄️ Acesso ao banco via Drizzle ORM.
│   │   ├── /schemas             # ✅ Validação com Zod.
│   │   ├── /domain              # 🌐 Entidades e tipos de domínio.
│   │   └── /infra               # 🔧 DB, Auth, pagamentos, e-mail.
│   ├── /drizzle                 # 💾 Migrations e schema do banco.
│   ├── package.json
│   └── pnpm-lock.yaml
│
├── /gestor                      # 📁 Front-end Next.js — Painel do creator
│   ├── /src
│   │   ├── /app                 # 📄 Rotas Next.js (Server Components).
│   │   ├── /pages               # 📄 Orquestradores Client (flat).
│   │   ├── /components          # 🧱 UI compartilhada entre domínios.
│   │   ├── /features            # 🏘️ UI de domínio específico.
│   │   ├── /queries             # 🔍 Leituras Supabase server-only.
│   │   ├── /mutations           # ✏️ Escritas Supabase client-side.
│   │   ├── /stores              # 🗃️ Stores Zustand.
│   │   └── /types               # 🧬 Tipos de domínio.
│   └── package.json
│
├── /checkout                    # 📁 Front-end Next.js — Compra pública de ingressos
│   ├── /src
│   │   ├── /app                 # 📄 Rotas Next.js.
│   │   ├── /features            # 🛒 Checkout, seleção de ingressos, pagamento.
│   │   └── /components/ui       # 🧱 Primitivos de UI.
│   └── package.json
│
├── /backoffice                  # 📁 Front-end Next.js — Painel administrativo interno
│   └── package.json
│
└── /grass                       # 📁 Design System (pnpm monorepo)
    ├── /packages/web            # 🎨 Componentes React (Radix + Tailwind).
    └── /packages/mobile         # 📱 Componentes React Native.
```

---

## 🎥 Demonstração

Use GIFs e prints para mostrar o projeto em ação.  

> [!WARNING]
> Dê preferência a hospedar suas imagens em um **CDN** (Content Delivery Network) ou no **GitHub Pages** para garantir que elas carreguem rapidamente e não quebrem. Saiba mais sobre o GitHub Pages clicando [aqui](https://github.com/joaopauloaramuni/joaopauloaramuni.github.io).

### 📱 Aplicativo Mobile

- GIF de demonstração (exemplo de fluxo de usuário):  

| Demonstração 1 | Demonstração 2 | Demonstração 3 | Demonstração 4 |
|----------------|----------------|----------------|----------------|
| <img src="https://joaopauloaramuni.github.io/image/fundo_mobile_engsoft.jpeg" alt="Demonstração 1" height="400"> | <img src="https://joaopauloaramuni.github.io/image/fundo_mobile_engsoft.jpeg" alt="Demonstração 2" height="400"> | <img src="https://joaopauloaramuni.github.io/image/fundo_mobile_engsoft.jpeg" alt="Demonstração 3" height="400"> | <img src="https://joaopauloaramuni.github.io/image/fundo_mobile_engsoft.jpeg" alt="Demonstração 4" height="400"> |
| _Sua gif aqui_ | _Sua gif aqui_ | _Sua gif aqui_ | _Sua gif aqui_ |

Para melhor visualização, as telas principais estão organizadas lado a lado.

| Tela | Captura de Tela |
| :---: | :---: |
| **Tela Inicial (Home)** | **Tela de Perfil / Settings** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela 1 do Mobile" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela 2 do Mobile" width="120px" height="120px"> |
| **Tela de Cadastro** | **Tela de Lista / Detalhes** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela 3 do Mobile" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela 4 do Mobile" width="120px" height="120px"> |

### 🌐 Aplicação Web

Para melhor visualização, as telas principais estão organizadas lado a lado.

| Tela | Captura de Tela |
| :---: | :---: |
| **Página Inicial (Home)** | **Página de Login** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela Inicial da Aplicação Web" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Tela de Login" width="120px" height="120px"> |
| **Gestor — Painel da Comunidade** | **Checkout — Compra de Ingressos** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Painel do Gestor" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Fluxo de Checkout" width="120px" height="120px"> |
| **Dashboard (Insights)** | **Backoffice / Admin** |
| <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Dashboard de Insights" width="120px" height="120px"> | <img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" alt="Painel Administrativo" width="120px" height="120px"> |

### 💻 Exemplo de Saída no Terminal (para Back-end, API, CLI)

Caso o projeto seja focado em serviços de Back-end (API, microserviço, CLI), utilize esta seção para demonstrar a interação com o sistema e a resposta esperada.

#### 1. Demonstração da API (Exemplo com cURL)

Mostra uma chamada simples para um endpoint da API (ex: GET de listagem).

```bash
# Chama o endpoint de listagem de eventos com o token de autenticação
curl -X GET 'http://localhost:3000/api/v1/events' \
     -H 'Authorization: Bearer <seu-jwt-token>'
```

**Saída Esperada:**
```json
{
  "total": 2,
  "events": [
    {
      "id": "1a2b3c",
      "title": "Meetup de Comunidade",
      "date": "2026-07-15T19:00:00Z",
      "status": "published"
    },
    {
      "id": "4d5e6f",
      "title": "Workshop de Creators",
      "date": "2026-08-01T14:00:00Z",
      "status": "draft"
    }
  ]
}
```

---

#### 2. Demonstração de Execução de CLI/Script

Mostra como executar uma ferramenta de linha de comando ou um script de manutenção do projeto (ex: rodar migrações ou um job agendado).

```bash
# Executa as migrações do banco de dados
pnpm migration:push
```

**Saída Esperada:**
```text
[INFO] Conectando ao banco de dados...
[SUCCESS] Conexão estabelecida.
[INFO] Aplicando migrações pendentes...
[SUCCESS] 3 migrações aplicadas com sucesso.
Tempo de execução: 0.87s
```

---

## 🧪 Testes

### Testes Unitários e de Integração
Para rodar os testes da unidade e integração:

```
pnpm test
```
*Ferramenta utilizada: Vitest*

### Testes End-to-End (E2E)
Para rodar os testes de ponta a ponta (E2E):

```
npm run test:e2e
```
*Ferramenta utilizada: Cypress, Playwright, Selenium, etc.*

---

## 🔗 Documentações utilizadas

Liste aqui links para documentação técnica, referências de bibliotecas complexas ou guias de estilo que foram cruciais para o projeto.

* 📖 **Framework (Front-end):** [Documentação Oficial do **Next.js**](https://nextjs.org/docs)
* 📖 **Biblioteca UI:** [Documentação Oficial do **React**](https://react.dev/reference/react)
* 📖 **Framework (Back-end):** [Documentação Oficial do **Fastify**](https://fastify.dev/docs/latest/)
* 📖 **ORM:** [Documentação do **Drizzle ORM**](https://orm.drizzle.team/docs/overview)
* 📖 **Banco de Dados:** [Documentação do **Supabase**](https://supabase.com/docs)
* 📖 **Estilização:** [Documentação do **Tailwind CSS**](https://tailwindcss.com/docs)
* 📖 **Gerenciamento de Estado:** [Documentação do **Zustand**](https://zustand.docs.pmnd.rs/)
* 📖 **Validação:** [Documentação do **Zod**](https://zod.dev/)
* 📖 **Guia de Estilo:** [**Conventional Commits** (Padrão de Mensagens)](https://www.conventionalcommits.org/en/v1.0.0/)

---

## 👥 Autores
Liste os principais contribuidores. Você pode usar links para seus perfis.

| 👤 Nome | 🖼️ Foto | :octocat: GitHub | 💼 LinkedIn | 📤 Gmail |
|---------|----------|-----------------|-------------|-----------|
| Laura Pontara  | <div align="center"><img src="https://joaopauloaramuni.github.io/image/aramunilogo.png" width="70px" height="70px"></div> | <div align="center"><a href="https://github.com/LauraPontara"><img src="https://joaopauloaramuni.github.io/image/github6.png" width="50px" height="50px"></a></div> | <div align="center"><a href="https://www.linkedin.com/in/lauraPontara"><img src="https://joaopauloaramuni.github.io/image/linkedin2.png" width="50px" height="50px"></a></div> | <div align="center"><a href="mailto:lauracampospl@gmail.com"><img src="https://joaopauloaramuni.github.io/image/gmail3.png" width="50px" height="50px"></a></div> |

> [!TIP]
> 💡 **Dica:** Escolha uma foto profissional, preferencialmente de rosto, evitando imagens com baixa qualidade, filtros excessivos ou elementos distrativos.

---

## 🤝 Contribuição
Guia para contribuições ao projeto.

1.  Faça um `fork` do projeto.
2.  Crie uma branch para sua feature (`git checkout -b feature/minha-feature`).
3. Commit suas mudanças (`git commit -m 'feat: Adiciona nova funcionalidade X'`). **(Utilize [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/))**
4.  Faça o `push` para a branch (`git push origin feature/minha-feature`).
5.  Abra um **Pull Request (PR)**.

> [!IMPORTANT]
> 📝 **Regras:** Por favor, verifique o arquivo [`CONTRIBUTING.md`](./CONTRIBUTING.md) para detalhes sobre nosso guia de estilo de código e o processo de submissão de PRs.

---

## 🙏 Agradecimentos
Em ambiente acadêmico, citar fontes e inspirações é crucial (integridade acadêmica). Em ambiente profissional, mostra humildade e conexão com a comunidade.

Gostaria de agradecer aos seguintes canais e pessoas que foram fundamentais para o desenvolvimento deste projeto:

* [**Engenharia de Software PUC Minas**](https://www.instagram.com/engsoftwarepucminas/) - Pelo apoio institucional, estrutura acadêmica e fomento à inovação e boas práticas de engenharia.
* [**Prof. Dr. João Paulo Aramuni**](https://github.com/joaopauloaramuni) - Pelos valiosos ensinamentos sobre **Arquitetura de Software** e **Padrões de Projeto**.
* [**Fernanda Kipper**](https://www.instagram.com/kipper.dev/) - Pelos valiosos ensinamentos em **Desenvolvimento Web**, **DevOps** e melhores práticas em **Front-end**.
* [**Rodrigo Branas**](https://branas.io/) - Pela didática excepcional em **Clean Architecture** e **Clean Code**.
* [**Código Fonte TV**](https://codigofonte.tv/) - Pelo vasto conteúdo e cobertura de notícias, tutoriais e apoio à comunidade de **Desenvolvimento Web**.

---

## 📄 Licença

Este projeto é distribuído sob a **[Licença MIT](https://github.com/joaopauloaramuni/laboratorio-de-desenvolvimento-de-software/blob/main/LICENSE)**.

---
