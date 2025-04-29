
SELECT nome,email
FROM clientes;

SELECT nome_produto, preco  
FROM produtos;

SELECT clientes.nome, vendas.data_venda
FROM vendas 
JOIN clientes ON vendas.id_cliente = clientes.id_cliente;

SELECT produtos.nome_produto, itens_venda.quantidade
FROM itens_venda
JOIN produtos ON itens_venda.id_produto = produtos.id_produto;

SELECT clientes.nome, produtos.nome_produto, vendas.data_venda
FROM itens_venda
JOIN vendas ON itens_venda.id_venda = vendas.id_venda
JOIN clientes ON vendas.id_cliente = clientes.id_cliente
JOIN produtos ON itens_venda.id_produto = produtos.id_produto;

SELECT nome, email
FROM clientes
WHERE id_cliente IN (
    SELECT id_cliente
    FROM vendas
);

SELECT nome_produto 
FROM produtos
WHERE preco > (
SELECT AVG(preco)
FROM produtos
);

SELECT nome
FROM clientes
WHERE id_cliente NOT IN(
SELECT id_cliente
FROM vendas 
);
