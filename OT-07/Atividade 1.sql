DELIMITER $$
CREATE PROCEDURE atualizar_preco(
    IN pidproduto INT,
    IN pnovo_preco DECIMAL(10,2)
)
BEGIN
    UPDATE produto
    SET preco = pnovo_preco
    WHERE idproduto = pidproduto;
END$$
DELIMITER ;

/*CALL atualizar_preco(1, 4.80);*/

/*SELECT * FROM produto;*/