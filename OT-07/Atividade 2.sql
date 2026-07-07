DELIMITER $$
-- Cria uma procedure chamada "aumento_10", SEM nenhum parâmetro
-- (os parênteses vazios "()" indicam que ela não recebe nada de fora)
CREATE PROCEDURE aumento_10()
BEGIN 
    UPDATE produto -- Atualiza o preço de TODOS os produtos, aumentando 10%
    SET preco = ROUND(preco * 1.10, 2) 
    -- preco * 1.10  → calcula o novo preço com 10% a mais
    -- ROUND(..., 2) → arredonda o resultado para 2 casas decimais (evita algo tipo 4.8699999)
    WHERE idproduto > 0; -- filtro sópra sópra
END$$
DELIMITER ;

/*CALL aumento_10();*/