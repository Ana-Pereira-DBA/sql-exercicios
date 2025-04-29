CREATE TRIGGER atualiza_estoque
AFTER INSERT ON itens_venda
FOR EACH ROW 
UPDATE produtos 
SET estoque = estoque - NEW.quantidade
WHERE id_produto = NEW.id_produto;
