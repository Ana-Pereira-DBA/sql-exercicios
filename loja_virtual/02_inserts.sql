INSERT INTO clientes (nome, email, telefone) VALUES
('Ana Silva', 'ana.silva@gmail.com', '(11) 98765-4321'),
('João Souza', 'joao.souza@gmail.com', '(21) 91234-5678'),
('Maria Oliveira', 'maria.oliveira@gmail.com', '(31) 99876-5432'),
('Pedro Santos', 'pedro.santos@gmail.com', '(41) 92345-6789'),
('Carla Pereira', 'carla.pereira@gmail.com', '(51) 93456-7890');

INSERT INTO produtos (nome_produto, preco, estoque, categoria) VALUES 
('Notebook Dell Inspiron', 3500.00, 10, 'Informática'),
('Smartphone Samsung Galaxy S21', 2800.00, 15, 'Telefonia'),
('Fone de Ouvido JBL Tune 500', 200.00, 30, 'Acessórios'),
('Teclado Mecânico Redragon', 350.00, 20, 'Periféricos'),
('Cadeira Gamer ThunderX3', 1200.00, 5, 'Móveis');

INSERT INTO vendas (id_cliente, total) VALUES
(1, 4000.00),
(2, 200.00),
(3, 600.00),
(4, 2800.00),
(5, 1200.00);

INSERT INTO itens_venda (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 3, 2, 200.00),
(2, 3, 1, 200.00),
(3, 4, 2, 300.00),
(4, 2, 1, 2800.00),
(5, 5, 1, 1200.00);
