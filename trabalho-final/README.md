<div align="center">
  <img src="./assets/logo-elo.png" alt="Logo Elo" width="280px"/>
</div>

<br/>

<div align="center">
  <img src="https://joaopauloaramuni.github.io/image/logo_ES_vertical.png" alt="Logo Engenharia de Software PUC Minas" width="110px"/>
</div>

<br/>

# 🏷️ Elo - Documentação de Projeto de Software

> Plataforma SaaS de gestão de comunidades para *creators*. Este repositório contém a **modelagem e a documentação de arquitetura** do sistema Elo: diagramas UML, decisões arquiteturais e modelo de domínio.

> [!IMPORTANT]
> Este é um trabalho de **modelagem e documentação**. Não há implementação executável, aplicação para rodar, testes automatizados ou deploy. O foco é o projeto de software e sua documentação, conforme a disciplina **Projeto de Software** do curso de **Engenharia de Software da PUC Minas**.

![Disciplina](https://img.shields.io/badge/Disciplina-Projeto%20de%20Software-007ec6?style=for-the-badge)
![PlantUML](https://img.shields.io/badge/Diagramas-PlantUML-1f6feb?style=for-the-badge)
![LaTeX](https://img.shields.io/badge/Documento-LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![Licença](https://img.shields.io/badge/Licença-MIT-blue?style=for-the-badge)

---

## 📚 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Escopo](#-escopo)
- [Funcionalidades Modeladas](#-funcionalidades-modeladas)
- [Atores](#-atores)
- [Histórias de Usuário](#-histórias-de-usuário)
- [Stack de Referência (Arquitetura Documentada)](#-stack-de-referência-arquitetura-documentada)
- [Arquitetura](#-arquitetura)
- [Diagramas UML](#-diagramas-uml)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Como Gerar a Documentação](#-como-gerar-a-documentação)
- [Referências](#-referências)
- [Autora](#-autora)
- [Licença](#-licença)

---

## 📝 Sobre o Projeto

O **Elo** é uma plataforma SaaS de gestão de comunidades voltada para *creators* e *community managers*. Ele resolve um problema central enfrentado por criadores de conteúdo e organizadores de eventos: a **fragmentação das ferramentas de gestão**. Com o Elo, as operações (da criação do evento ao check-in no dia, passando pela gestão de membros e campanhas) acontecem em um único ecossistema.

Este trabalho documenta a **arquitetura de software** do Elo, apresentando diagramas UML (casos de uso, sequência, comunicação, componentes, implantação, classes e estados), o modelo de dados e as decisões arquiteturais.

> [!NOTE]
> O nome "Elo" é fictício, utilizado para fins acadêmicos. A arquitetura documentada é baseada em um sistema real em produção, porém remodelada para representar uma arquitetura de referência adequada aos requisitos do domínio.

---

## 🎯 Escopo

A plataforma é organizada em **duas superfícies**:

- **Gestor Elo** - painel privado onde o *creator* gerencia comunidades, eventos, membros, campanhas e acessa *insights*.
- **Checkout Elo** - aplicação pública para listagem de eventos, RSVP e compra de ingressos com pagamento via PIX e cartão de crédito.

---

## ✨ Funcionalidades Modeladas

- 🏘️ **Gestão de Comunidades:** criação e gerenciamento de comunidades com controle de membros, papéis e privacidade.
- 🎟️ **Eventos e Ingressos:** criação de eventos com múltiplos lotes de ingressos, RSVP e check-in digital.
- 💳 **Pagamentos Integrados:** venda de ingressos via PIX e cartão de crédito com integração a gateway de pagamento.
- 📣 **Campanhas:** criação e disparo de campanhas de comunicação e engajamento para membros.
- 📊 **Insights de Comunidade:** métricas de engajamento, crescimento de membros e saúde da comunidade.
- 🔔 **Notificações:** envio de alertas por e-mail.
- 🔐 **Autenticação Segura:** login, cadastro e controle de acesso baseado em papéis com JWT.

---

## 👥 Atores

| Ator | Tipo | Descrição |
| :--- | :--- | :--- |
| Usuário | Humano (genérico) | Ator base que representa qualquer pessoa autenticada. |
| Creator (Gestor) | Humano | Organiza comunidades, eventos, lotes, campanhas, realiza check-in e consulta insights. |
| Membro | Humano | Participa de uma comunidade, solicita entrada, faz RSVP e recebe notificações. |
| Comprador | Humano | Adquire ingressos pelo Checkout (pode atuar como convidado, sem conta prévia). |
| Gateway de Pagamento | Sistema | Processa cobranças via PIX e cartão e notifica a confirmação por *webhook*. |
| Serviço de E-mail (Resend) | Sistema | Envio transacional de e-mails. |
| Supabase Auth | Sistema | Provedor de identidade (emissão e validação de JWT). |

---

## 📖 Histórias de Usuário

O sistema é especificado por **21 histórias de usuário** (US01 a US21). O detalhamento completo, com critérios de aceitação, está no documento [`documentacao/main.pdf`](./documentacao/main.pdf).

| ID | História | Ator |
| :--- | :--- | :--- |
| US01 | Cadastrar-se na plataforma | Creator |
| US02 | Fazer login | Usuário |
| US03 | Recuperar senha | Usuário |
| US04 | Criar comunidade | Creator |
| US05 | Gerenciar membros | Creator |
| US06 | Configurar privacidade da comunidade | Creator |
| US07 | Solicitar/aprovar entrada na comunidade | Membro/Creator |
| US08 | Criar evento com lotes de ingressos | Creator |
| US09 | Publicar evento | Creator |
| US10 | Cancelar evento | Creator |
| US11 | Listar eventos públicos | Comprador |
| US12 | Fazer RSVP | Membro |
| US13 | Comprar ingresso | Comprador |
| US14 | Receber ingresso por e-mail | Comprador |
| US15 | Solicitar reembolso | Comprador |
| US16 | Realizar check-in digital | Creator |
| US17 | Criar campanha | Creator |
| US18 | Disparar campanha | Creator |
| US19 | Receber notificações | Membro |
| US20 | Consultar dashboard de insights | Creator |
| US21 | Exportar relatório de insights | Creator |

---

## 🛠 Stack de Referência (Arquitetura Documentada)

As tecnologias abaixo descrevem a **arquitetura de referência proposta** na documentação (não há código neste repositório).

**Front-end:** Next.js 16, React 19, TypeScript 5, Tailwind CSS v4, Zustand v5, React Query v5, React Hook Form + Zod v4.

**Back-end:** Node.js 24, Fastify v5, TypeScript 5, Drizzle ORM, PostgreSQL 17, Zod v4, tsyringe (injeção de dependência).

**Infraestrutura:** Supabase (PostgreSQL + Auth + Storage), Google Cloud Run, Google Cloud Tasks, Vercel, Resend (e-mail), gateway de pagamento (PIX + cartão).

**Padrões:** Repository, Service Layer, DTOs + validação com Zod, Row-Level Security (RLS), processamento assíncrono via fila e *worker*.

---

## 🏗 Arquitetura

A arquitetura é descrita pelo modelo **C4** no nível de contêineres (Nível 2). Cada superfície é uma aplicação Next.js independente que consome uma API REST central (Fastify), que encapsula as regras de negócio, persiste dados em PostgreSQL (Supabase) e delega trabalho assíncrono a um *worker* acionado por fila.

<div align="center">
  <img src="./diagramas/imagens/arquitetura.png" alt="Diagrama de Arquitetura (C4 - Contêineres)" width="720px"/>
</div>

---

## 📊 Diagramas UML

### Diagrama de Casos de Uso

<img src="./diagramas/imagens/caso-de-uso.png" alt="Diagrama de Casos de Uso"/>

### Diagramas de Sequência do Sistema (caixa-preta)

| Comprar Ingresso (UC13) | Criar Evento (UC08) | Check-in (UC17) |
| :---: | :---: | :---: |
| <img src="./diagramas/imagens/ssd-comprar-ingresso.png" width="320px"/> | <img src="./diagramas/imagens/ssd-criar-evento.png" width="320px"/> | <img src="./diagramas/imagens/ssd-checkin.png" width="320px"/> |

### Diagramas de Sequência (realização)

<img src="./diagramas/imagens/seq-comprar-ingresso.png" alt="Sequência - Comprar Ingresso" width="760px"/>

<img src="./diagramas/imagens/seq-criar-evento.png" alt="Sequência - Criar Evento" width="760px"/>

<img src="./diagramas/imagens/seq-checkin.png" alt="Sequência - Check-in" width="760px"/>

### Diagramas de Comunicação

<img src="./diagramas/imagens/comunicacao-comprar-ingresso.png" alt="Comunicação - Comprar Ingresso" width="760px"/>

<img src="./diagramas/imagens/comunicacao-criar-evento.png" alt="Comunicação - Criar Evento" width="640px"/>

<img src="./diagramas/imagens/comunicacao-checkin.png" alt="Comunicação - Check-in" width="760px"/>

### Diagrama de Classes

<img src="./diagramas/imagens/classes.png" alt="Diagrama de Classes" width="720px"/>

### Diagrama de Componentes

<img src="./diagramas/imagens/componentes.png" alt="Diagrama de Componentes" width="720px"/>

### Diagrama de Implantação

<img src="./diagramas/imagens/implantacao.png" alt="Diagrama de Implantação" width="760px"/>

### Diagramas de Estados

| Evento | Pedido e Ingresso |
| :---: | :---: |
| <img src="./diagramas/imagens/estados-evento.png" width="380px"/> | <img src="./diagramas/imagens/estados-pedido.png" width="380px"/> |

### Modelo de Dados

<img src="./diagramas/imagens/modelo-de-dados.png" alt="Modelo de Dados (Esquema Relacional)" width="720px"/>

---

## 📂 Estrutura do Repositório

```
trabalho-final/
├── README.md                 # Este arquivo
├── build.ps1                 # Renderiza os diagramas e compila o PDF
│
├── documentacao/
│   ├── main.tex              # Documento LaTeX (fonte)
│   └── main.pdf              # Documento final compilado
│
├── diagramas/
│   ├── codigos/              # Fontes dos diagramas em PlantUML (*.puml)
│   └── imagens/              # Imagens geradas (*.png)
│
└── artefatos-auxiliares/     # Material de apoio (exemplos, referências)
```

---

## ⚙️ Como Gerar a Documentação

Como o repositório contém apenas modelagem, "gerar a documentação" significa **renderizar os diagramas** e **compilar o PDF**.

**Pré-requisitos:**
- [Java](https://www.java.com/) (para executar o PlantUML).
- Uma distribuição LaTeX com `pdflatex` (por exemplo, [MiKTeX](https://miktex.org/) ou TeX Live).

**Geração (Windows / PowerShell):**

```powershell
# A partir da pasta trabalho-final/
pwsh -File build.ps1
```

O script baixa o `plantuml.jar` (se necessário), renderiza todos os `.puml` de `diagramas/codigos/` para `diagramas/imagens/` e compila `documentacao/main.tex` em `documentacao/main.pdf`.

Para renderizar um diagrama isolado:

```powershell
java -jar plantuml.jar -tpng -o ../imagens diagramas/codigos/caso-de-uso.puml
```

---

## 🔗 Referências

- 📖 [PlantUML - Site Oficial](https://plantuml.com/) e [Guia](https://plantuml.com/guide)
- 📖 [C4 Model](https://c4model.com/)
- 📖 [UML - Unified Modeling Language](https://www.uml.org/)
- 📖 [Documentação do LaTeX](https://www.latex-project.org/help/documentation/)

---

## 👩‍💻 Autora

| 👤 Nome | :octocat: GitHub | 💼 LinkedIn | 📤 Gmail |
| :--- | :--- | :--- | :--- |
| Laura Campos Pontara Lopes | [LauraPontara](https://github.com/LauraPontara) | [laura-pontara](https://www.linkedin.com/in/laura-pontara) | lauracampospl@gmail.com |

> Trabalho desenvolvido para a disciplina de **Projeto de Software** - PUC Minas
> Professor: João Paulo Carneiro Aramuni

---

## 📄 Licença

Este projeto é distribuído sob a **[Licença MIT](https://opensource.org/licenses/MIT)**.
