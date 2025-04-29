-- Índice para melhorar busca por e-mail
CREATE INDEX idx_email ON clientes(email);

-- Índice para acelerar JOINs com id_cliente
CREATE INDEX idx_id_cliente ON vendas(id_cliente);
