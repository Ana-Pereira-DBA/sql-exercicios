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

| Arquivo | Descrição |
|--------|-----------|
| `01_criacao_estrutura.sql` | Criação das tabelas com chaves primárias e estrangeiras |
| `02_insercao_dados.sql` | Inserção de dados de exemplo nas tabelas |
| `03_consultas.sql` | Consultas utilizando `JOIN`, subqueries e filtros |
| `04_trigger_estoque.sql` | Trigger que atualiza o estoque automaticamente após venda |
| `05_indices.sql` | Criação de índices para melhorar performance das consultas |

---

## Tecnologias utilizadas

- MySQL

---

## Status

Projeto em andamento e pronto para testes e análises!

