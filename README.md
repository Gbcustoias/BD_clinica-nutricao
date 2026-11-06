# 🗄️ SQL Analytics para Gestão de Clínica Nutricional

Projeto desenvolvido em PostgreSQL com foco em modelagem relacional, manipulação de dados e consultas analíticas aplicadas ao contexto de uma clínica de nutrição.

O objetivo é demonstrar competências relacionadas à estruturação de bancos de dados, construção de relacionamentos, consultas SQL e geração de informações para apoio à tomada de decisão.

---

## 🎯 Objetivo

Desenvolver uma base de dados relacional capaz de armazenar, organizar e consultar informações clínicas, antropométricas e alimentares, simulando um ambiente real de gestão nutricional.

O projeto demonstra conceitos fundamentais utilizados em áreas como:

- Banco de Dados
- Business Intelligence
- Data Analytics
- Modelagem Relacional
- SQL para análise de dados

---

## 📚 Contexto

Clínicas de nutrição lidam diariamente com grandes volumes de informações relacionadas a pacientes, consultas, avaliações corporais, hábitos alimentares e prescrições nutricionais.

A organização adequada desses dados permite:

- Melhor acompanhamento dos pacientes;
- Geração de indicadores clínicos;
- Análise de evolução antropométrica;
- Apoio à tomada de decisão profissional;
- Estruturação de futuras soluções analíticas.

---

## 🏗️ Modelagem de Dados

O banco foi projetado para armazenar informações relacionadas a:

### 👤 Pacientes

- Dados cadastrais
- Histórico de consultas

### 🩺 Profissionais

- Cadastro dos nutricionistas
- Relacionamento com atendimentos realizados

### 📏 Avaliações Antropométricas

- Peso corporal
- Altura
- IMC
- Composição corporal

### 📝 Recordatórios Alimentares

- Consumo alimentar
- Hábitos nutricionais

### 🍽️ Cardápios

- Prescrições alimentares
- Planejamento nutricional

### 🥦 Base Nutricional

- Integração com dados da Tabela TACO

---

## 🛠️ Funcionalidades Implementadas

### Estruturação do Banco

- Criação de tabelas
- Chaves primárias
- Chaves estrangeiras
- Relacionamentos entre entidades

### Manipulação de Dados

- Inserção de registros
- Atualização de dados
- Exclusão de registros

### Consultas SQL

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING

### JOINs

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

### Subconsultas

- Consultas aninhadas
- Filtros avançados

### Views

- Criação de visões para simplificação de consultas

### Agregações

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## 📂 Estrutura do Projeto

```text
├── Clinica de nutrição.sql
│   └── Criação das tabelas, relacionamentos e estrutura principal do banco de dados
│
├── inserts.sql
│   └── Inserção de dados fictícios para testes e simulações
│
├── inserts_TACO.sql
│   └── Dados nutricionais baseados na Tabela Brasileira de Composição de Alimentos (TACO)
│
├── joins.sql
│   └── Exemplos de consultas utilizando JOINs
│
├── subconsultas_views.sql
│   └── Subconsultas e criação de Views
│
├── agregacoes.sql
│   └── Consultas com funções de agregação e estatísticas
│
├── README.md
│   └── Documentação do projeto
│
└── LICENSE
    └── Licença do repositório
```

---

## 🗺️ Modelo Entidade-Relacionamento (MER)

Adicione aqui a imagem do diagrama MER.

```md
![MER (1)](https://github.com/user-attachments/assets/4d1f688e-fcba-4558-a9f7-74ae4ed6a70e)
```

---

## 🏗️ Arquitetura da Solução

```text
Dados Clínicos
        ↓
PostgreSQL
        ↓
Modelagem Relacional
        ↓
Consultas SQL
        ↓
Indicadores e Análises
```

---

## 🛠️ Tecnologias Utilizadas

### Banco de Dados

- PostgreSQL

### Ferramentas

- DBeaver

### Linguagem

- SQL

---

## 💡 Competências Demonstradas

- SQL
- PostgreSQL
- Modelagem Relacional
- Banco de Dados
- Chaves Primárias e Estrangeiras
- Consultas Analíticas
- Agregação de Dados
- Criação de Views
- Normalização
- Estruturação de Dados
- Data Analytics
- Business Intelligence

---

## ▶️ Como Executar

### 1. Clone o repositório

```bash
git clone https://github.com/Gbcustoias/BD_clinica-nutricao
```

### 2. Abra o DBeaver

Ou outro gerenciador compatível com PostgreSQL.

### 3. Execute o script principal

```sql
clinica_nutricao.sql
```

### 4. Popule a base

Execute:

```sql
inserts.sql
```

e

```sql
inserts_TACO.sql
```

### 5. Explore as consultas

Execute os arquivos:

- joins.sql
- subconsultas_views.sql
- agregacoes.sql

---

## 📈 Possíveis Análises

O modelo permite desenvolver consultas relacionadas a:

- Evolução de pacientes ao longo do tempo;
- Distribuição de IMC;
- Frequência de atendimentos;
- Indicadores clínicos;
- Hábitos alimentares;
- Apoio à tomada de decisão profissional.

---

## 📚 Aprendizados

Durante o desenvolvimento deste projeto foram aplicados conceitos relacionados a:

- Modelagem de Banco de Dados;
- Normalização;
- PostgreSQL;
- Consultas SQL;
- Relacionamentos entre entidades;
- Estruturação de dados para análise;
- Construção de indicadores;
- Fundamentos de Business Intelligence.

Além dos aspectos técnicos, o projeto demonstra como bases relacionais podem servir de fundamento para iniciativas de Analytics, BI e Ciência de Dados.

---

## 👨‍💻 Autor

**Giovani Boldrini Custoias**

Projeto desenvolvido para consolidar conhecimentos em modelagem de dados, PostgreSQL e SQL aplicados a um cenário realista da área da saúde.

---

## 📜 Licença

Projeto desenvolvido para fins educacionais e demonstração de competências em Banco de Dados, SQL e Análise de Dados.




