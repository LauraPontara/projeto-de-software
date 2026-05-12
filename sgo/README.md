# 🏅 Sistema de Gestão das Olimpíadas (SGO)

> Trabalho 1 — Primeira Entrega | Projeto de Software | PUC Minas  
> Disciplina ministrada pelo Prof. João Paulo Carneiro Aramuni

<div align="center">
  <img src="https://joaopauloaramuni.github.io/image/logo_ES_vertical.png" alt="Logo PUC Minas" width="110px"/>
</div>

<br/>

O **SGO — Sistema de Gestão das Olimpíadas** é um sistema modelado para coordenar os diferentes aspectos de um evento olímpico. O sistema contempla o gerenciamento de competições, inscrições de atletas, alocação de locais para as provas e controle de resultados, além da geração de relatórios de medalhas por país.

---

## 📚 Sumário

- [Sobre o Projeto](#-sobre-o-projeto)
- [Regras de Negócio](#-regras-de-negócio)
- [Histórias de Usuário](#-histórias-de-usuário)
- [Diagramas UML](#-diagramas-uml)
  - [Diagrama de Caso de Uso](#diagrama-de-caso-de-uso)
  - [Diagrama de Classes e de Pacotes](#diagrama-de-classes-e-de-pacotes)
  - [Diagrama de Componentes](#diagrama-de-componentes)
  - [Diagrama de Implantação](#diagrama-de-implantação)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Documentação Utilizada](#-documentação-utilizada)
- [Autora](#-autora)

---

## 📝 Sobre o Projeto

Com a chegada das Olimpíadas, um novo sistema de gestão é necessário para coordenar os diferentes aspectos do evento. O SGO permite o gerenciamento de competições, inscrições de atletas de diferentes países, alocação de locais para as provas sem conflitos de horário, controle dos resultados das disputas e geração de relatórios de medalhas.

Este projeto é desenvolvido no contexto da disciplina de **Projeto de Software** do curso de Engenharia de Software da PUC Minas, com foco na **modelagem e diagramação UML**, sem necessidade de implementação de código.

---

## 📋 Regras de Negócio

1. **Cadastro de competições:** o sistema deve permitir o cadastro de competições, incluindo nome da modalidade, data, horário, local e lista de atletas inscritos.
2. **Inscrição de atletas:** atletas de diferentes países podem se inscrever em competições específicas. Cada atleta pode participar de várias competições, mas só pode representar um país por modalidade.
3. **Alocação de locais:** os locais devem ser alocados evitando conflitos de horário — um local só pode abrigar uma competição por vez.
4. **Controle de resultados:** após cada competição, os resultados devem ser registrados com o 1º, 2º e 3º colocados.
5. **Relatórios de medalhas:** o sistema deve gerar relatórios com o desempenho de cada país em ouro, prata e bronze.

---

## 📖 Histórias de Usuário

### US01 — Cadastrar Competição
**Como** administrador do sistema,  
**Quero** cadastrar uma nova competição informando modalidade, data, horário e local,  
**Para que** o evento esteja devidamente registrado e disponível para inscrições de atletas.

**Critérios de aceitação:**
- O sistema deve exigir nome da modalidade, data, horário e local.
- A competição deve ser salva com status "aberta para inscrições".
- Não deve ser possível cadastrar duas competições no mesmo local e horário.

---

### US02 — Inscrever Atleta em Competição
**Como** atleta,  
**Quero** me inscrever em uma competição específica,  
**Para que** ele possa participar da disputa em sua modalidade representando um país.

**Critérios de aceitação:**
- Um atleta pode ser inscrito em várias competições.
- Um atleta só pode representar um único país por modalidade.
- O sistema deve impedir inscrição duplicada do mesmo atleta na mesma competição.

---

### US03 — Alocar Local para Competição
**Como** administrador do sistema,  
**Quero** alocar um local disponível para uma competição,  
**Para que** não haja conflito de uso de espaço entre diferentes eventos.

**Critérios de aceitação:**
- O sistema deve verificar a disponibilidade do local na data e horário informados.
- Caso o local já esteja ocupado, o sistema deve alertar e bloquear a alocação.
- A alocação deve ficar registrada e visível na agenda do local.

---

### US04 — Registrar Resultado de Competição
**Como** juiz,  
**Quero** registrar o resultado de uma competição informando os atletas classificados em 1º, 2º e 3º lugar,  
**Para que** as medalhas sejam atribuídas corretamente a cada país.

**Critérios de aceitação:**
- O resultado só pode ser registrado para competições já realizadas.
- Devem ser informados exatamente os três primeiros colocados.
- Após o registro, o resultado não deve poder ser alterado sem permissão de administrador.

---

### US05 — Consultar Relatório de Medalhas
**Como** usuário do sistema (administrador, imprensa ou público),  
**Quero** consultar o relatório de medalhas por país,  
**Para que** seja possível acompanhar o desempenho de cada nação ao longo das Olimpíadas.

**Critérios de aceitação:**
- O relatório deve exibir a quantidade de medalhas de ouro, prata e bronze por país.
- A listagem deve ser ordenada pelo número de ouros, com desempate por pratas e bronzes.
- O relatório deve ser atualizado automaticamente após cada resultado registrado.

---

### US06 — Consultar Competições por Local
**Como** usuário do sistema,  
**Quero** visualizar todas as competições agendadas em um determinado local,  
**Para que** seja possível verificar a agenda de uso daquele espaço.

**Critérios de aceitação:**
- O sistema deve listar as competições filtradas por local.
- As competições devem ser exibidas em ordem cronológica.

---

### US07 — Consultar Competições de um Atleta
**Como** usuário do sistema,  
**Quero** consultar todas as competições nas quais um atleta está inscrito,  
**Para que** seja possível acompanhar a agenda e os resultados desse atleta.

**Critérios de aceitação:**
- A busca pode ser feita pelo nome ou identificador do atleta.
- O sistema deve exibir as competições com status (agendada, realizada) e resultados quando disponíveis.

---

## 📊 Diagramas UML

### Diagrama de Caso de Uso

> 🚧 Diagrama em construção — será inserido em breve.

<!-- Substitua o src pelo caminho real da imagem no repositório -->
<!-- <img width="700px" src="https://github.com/lauracampospl/sistema-gestao-olimpiadas/blob/main/imagens/diagrama-de-caso-de-uso.png"/> -->

---

### Diagrama de Classes e de Pacotes

> 🚧 Diagrama em construção — será inserido em breve.

<!-- <img width="700px" src="https://github.com/lauracampospl/sistema-gestao-olimpiadas/blob/main/imagens/diagrama-de-classes.png"/> -->
<!-- <img width="700px" src="https://github.com/lauracampospl/sistema-gestao-olimpiadas/blob/main/imagens/diagrama-de-pacotes.png"/> -->

---

### Diagrama de Componentes

> 🚧 Diagrama em construção — será inserido em breve.

<!-- <img width="700px" src="https://github.com/lauracampospl/sistema-gestao-olimpiadas/blob/main/imagens/diagrama-de-componentes.png"/> -->

---

### Diagrama de Implantação

> 🚧 Diagrama em construção — será inserido em breve.

<!-- <img width="700px" src="https://github.com/lauracampospl/sistema-gestao-olimpiadas/blob/main/imagens/diagrama-de-implantacao.png"/> -->

---

## 📁 Estrutura do Repositório

```
sgo/
│
├── README.md
│
├── imagens/
│   ├── diagrama-de-caso-de-uso.png
│   ├── diagrama-de-classes.png
│   ├── diagrama-de-pacotes.png
│   ├── diagrama-de-componentes.png
│   └── diagrama-de-implantacao.png
│
└── codigos/
    ├── diagrama-de-caso-de-uso.puml
    ├── diagrama-de-classes.puml
    ├── diagrama-de-pacotes.puml
    ├── diagrama-de-componentes.puml
    └── diagrama-de-implantacao.puml
```

---

## 🔗 Documentação Utilizada

- 📖 [PlantUML — Site Oficial](https://plantuml.com/)
- 📖 [PlantUML — Guia Completo](https://plantuml.com/guide)
- 📖 [PlantUML API — Prof. Aramuni (GitHub)](https://github.com/joaopauloaramuni/projeto-de-software/tree/main/PROJETOS/Python/Projeto%20PlantUML%20API)

---

## 👩‍💻 Autora

| 👤 Nome          | 🖼️ Foto                                                                                                                        |GitHub                                                                                                                                                    | 💼 LinkedIn                                                                                                                                                                            | 📤 Gmail                                                                                                                                                     |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Laura Campos Pontara Lopes    | <div align="center"><img src="https://github.com/LauraPontara.png" width="70px" height="70px" style="border-radius:50%"></div> | <div align="center"><a href="https://github.com/LauraPontara"><img src="https://joaopauloaramuni.github.io/image/github6.png" width="50px" height="50px"></a></div> | <div align="center"><a href="https://linkedin.com/in/laura-pontara"><img src="https://joaopauloaramuni.github.io/image/linkedin2.png" width="50px" height="50px"></a></div>            | <div align="center"><a href="mailto:lauracampospl@gmail.com"><img src="https://joaopauloaramuni.github.io/image/gmail3.png" width="50px" height="50px"></a></div>    |


---

> Trabalho desenvolvido para a disciplina de **Projeto de Software** — PUC Minas, 4º Período  
> Professor: João Paulo Carneiro Aramuni