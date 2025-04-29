# Projeto: db_loja_virtual

Este projeto simula um banco de dados de uma loja virtual, com o objetivo de praticar SQL, modelagem relacional e análise de performance.

---

## Objetivos do projeto

- Criar um banco de dados relacional no MySQL
- Inserir dados simulados para testes
- Executar consultas SQL usando `JOIN`, `IN`, `NOT IN`, `AVG` e subqueries
- Criar uma trigger para atualização automática de estoque
- Criar índices para otimizar a performance das consultas

---

## Estrutura do banco de dados

O banco de dados `db_loja_virtual` contém as seguintes tabelas:

- `clientes`: Dados dos clientes
- `produtos`: Produtos disponíveis para venda
- `vendas`: Registro de vendas realizadas
- `itens_venda`: Detalhamento dos itens de cada venda

---

## Arquivos disponíveis

- [`01_criacao_estrutura.sql`](https://github.com/Ana-Pereira-DBA/sql-exercicios/blob/main/loja_virtual/01_criacao_estrutura.sql): Criação do banco de dados e das tabelas com chaves primárias e estrangeiras.
- [`02_insercao_dados.sql`](https://github.com/Ana-Pereira-DBA/sql-exercicios/blob/main/loja_virtual/02_insercao_dados.sql): Inserção de dados nas tabelas `clientes`, `produtos`, `vendas` e `itens_venda`.
- [`03_consultas.sql`](https://github.com/Ana-Pereira-DBA/sql-exercicios/blob/main/loja_virtual/03_consultas.sql): Consultas com `JOIN`, subqueries e filtros.
- [`04_trigger_estoque.sql`](https://github.com/Ana-Pereira-DBA/sql-exercicios/blob/main/loja_virtual/04_trigger_estoque.sql): Trigger para atualização automática do estoque após uma venda.
- [`05_indices.sql`](https://github.com/Ana-Pereira-DBA/sql-exercicios/blob/main/loja_virtual/05_indices.sql): Criação de índices para melhorar o desempenho das consultas.

---
## Tecnologias utilizadas

- MySQL

---

## Status

Projeto em andamento e pronto para testes e análises!

