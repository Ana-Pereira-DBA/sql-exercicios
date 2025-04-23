
-- Criação de um banco de dados fictício para uma loja de livros
CREATE DATABASE loja_livros;
USE loja_livros;

-- Tabela de clientes
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(50)
);

-- Tabela de livros
CREATE TABLE livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10, 2)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_livro INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

-- Inserindo alguns dados
INSERT INTO clientes (nome, email, cidade) VALUES
('Maria Silva', 'maria@email.com', 'Petrolina'),
('João Santos', 'joao@email.com', 'Recife');

INSERT INTO livros (titulo, autor, preco) VALUES
('SQL Básico', 'Carlos Almeida', 59.90),
('Modelagem de Dados', 'Fernanda Costa', 89.90);

INSERT INTO pedidos (id_cliente, id_livro, data_pedido) VALUES
(1, 1, '2025-04-01'),
(2, 2, '2025-04-03');

-- Consultas básicas
SELECT * FROM clientes;

SELECT pedidos.id_pedido, clientes.nome, livros.titulo, pedidos.data_pedido
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN livros ON pedidos.id_livro = livros.id_livro
ORDER BY pedidos.data_pedido DESC;
