-- Lista nome e e-mail dos clientes
SELECT nome, email FROM clientes;

-- Produtos com seus preços
SELECT nome_produto, preco FROM produtos;

-- Nome dos clientes e data da venda
SELECT clientes.nome, vendas.data_venda
FROM vendas
JOIN clientes ON vendas.id_cliente = clientes.id_cliente;

-- Nome do produto e quantidade vendida
SELECT produtos.nome_produto, itens_venda.quantidade
FROM itens_venda
JOIN produtos ON itens_venda.id_produto = produtos.id_produto;

-- Nome do cliente, nome do produto e data da venda
SELECT clientes.nome, produtos.nome_produto, vendas.data_venda
FROM itens_venda
JOIN vendas ON itens_venda.id_venda = vendas.id_venda
JOIN clientes ON vendas.id_cliente = clientes.id_cliente
JOIN produtos ON itens_venda.id_produto = produtos.id_produto;

-- Clientes que realizaram compras
SELECT nome, email FROM clientes
WHERE id_cliente IN (
   SELECT id_cliente FROM vendas
);

-- Produtos com preço acima da média
SELECT nome_produto FROM produtos
WHERE preco > (
    SELECT AVG(preco) FROM produtos
);

-- Clientes que não compraram
SELECT nome FROM clientes
WHERE id_cliente NOT IN (
    SELECT id_cliente FROM vendas
);
