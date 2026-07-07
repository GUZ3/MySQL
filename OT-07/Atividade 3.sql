DELIMITER $$
CREATE PROCEDURE reajuste_vendas()
BEGIN
    UPDATE produto p
    JOIN (
        SELECT
            idproduto,
            SUM(quantidade) AS quantidade_vendida
        FROM venda_has_produto
        GROUP BY idproduto
    ) v
    ON p.idproduto = v.idproduto
    SET p.preco = ROUND(p.preco * (1 + (v.quantidade_vendida / 100)), 2);
END$$
DELIMITER ;

/*CALL reajuste_vendas();*/