DELIMITER $$
CREATE PROCEDURE aumento_10()
BEGIN
    UPDATE produto
    SET preco = ROUND(preco * 1.10, 2)
    WHERE idproduto > 0;
END$$
DELIMITER ;

/*CALL aumento_10();*/