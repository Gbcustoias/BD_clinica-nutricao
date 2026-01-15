
# 🥗 Projeto SQL – Clínica de Nutrição

Este projeto simula o banco de dados de uma clínica de nutrição, abrangendo consultas, evolução antropométrica, recordatórios alimentares e cardápios personalizados. O objetivo é demonstrar a modelagem relacional, manipulação de dados e consultas SQL em um contexto realista da área da saúde.

---

## 📚 Descrição Geral

O banco de dados foi projetado para armazenar e gerenciar informações essenciais de uma clínica de nutrição, incluindo:
- Cadastro de pacientes e profissionais
- Registro de consultas e avaliações antropométricas
- Armazenamento de recordatórios alimentares
- Geração de cardápios personalizados
- Integração com tabelas nutricionais (TACO)

---

## 📁 Estrutura do Projeto

├── clinica_nutricao.sql         # Criação das tabelas e relacionamentos
├── inserts.sql                 # Dados fictícios de pacientes, consultas, etc.
├── inserts_TACO.sql            # Dados nutricionais baseados na TACO
├── joins.sql                   # Exemplos de JOINs (INNER, LEFT, RIGHT, FULL)
├── subconsultas_views.sql      # Subconsultas e criação de views
├── agregacoes.sql              # Consultas com funções de agregação
└── README.md                   # Documentação do projeto

-

## 🛠️ Funcionalidades e Exemplos de Consultas

- **Criação de Tabelas:** Estrutura relacional para pacientes, profissionais, consultas, avaliações, alimentos e cardápios.
- **Inserts:** População do banco com dados fictícios para testes e simulações.
- **Consultas com JOINs:** Exemplos de INNER, LEFT, RIGHT e FULL JOIN para cruzamento de informações.
- **Subconsultas e Views:** Criação de consultas aninhadas e visualizações para facilitar análises.
- **Agregações:** Uso de funções como `SUM`, `AVG`, `COUNT`, `MAX`, `MIN` para relatórios e estatísticas.

---

## 💡 Como Utilizar

1. Importe os scripts `.sql` em seu gerenciador de banco de dados  (Realizado no Dbeaver)
2. Execute o script de criação das tabelas (Criado em PostgreSQL)
3. Insira os dados fictícios.
4. Utilize os exemplos de consultas para explorar e analisar o banco de dados.

---

## 🗺️ Modelo Entidade-Relacionamento (MER)
![MER (1)](https://github.com/user-attachments/assets/4d1f688e-fcba-4558-a9f7-74ae4ed6a70e)



