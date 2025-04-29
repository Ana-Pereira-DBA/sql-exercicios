CREATE SCHEMA db_loja_virtual;

CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(100) NOT NULL, 
email VARCHAR(100) UNIQUE NOT NULL, 
telefone VARCHAR(20), 
data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE produtos(
id_produto INT AUTO_INCREMENT PRIMARY KEY, 
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
estoque INT DEFAULT 0,
categoria VARCHAR(50)
);

CREATE TABLE vendas(
id_venda INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT NOT NULL,
data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
total DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE itens_venda(
id_item INT AUTO_INCREMENT PRIMARY KEY,
id_venda INT NOT NULL,
id_produto INT NOT NULL,
quantidade INT NOT NULL,
preco_initario DECIMAL(10,2) NOT NULL,
FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);