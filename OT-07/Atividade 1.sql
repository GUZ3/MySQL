DELIMITER $$

-- Cria uma procedure (procedimento armazenado) chamada "atualizar_preco"
CREATE PROCEDURE atualizar_preco(
    IN pidproduto INT,    			-- parâmetro de ENTRADA: o id do produto que vai ser atualizado
    IN pnovo_preco DECIMAL(10,2)	-- parâmetro de ENTRADA: o novo preço (com 2 casas decimais)
)
BEGIN
    UPDATE produto					-- Atualiza o preço do produto na tabela "produto"
    SET preco = pnovo_preco			-- define o novo valor do preço
    WHERE idproduto = pidproduto;	-- só atualiza o produto com o id recebido como parâmetro
END$$
DELIMITER;
	
/*CALL atualizar_preco(1, 4.80);*/

/*SELECT * FROM produto;*/