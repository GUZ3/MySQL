DELIMITER $$
CREATE TRIGGER vendedor_desligado 
BEFORE DELETE ON vendedor -- Roda ANTES de um DELETE (exclusão) na tabela "vendedor"
FOR EACH ROW -- Roda para cada linha que estiver sendo deletada
BEGIN
	-- Antes do vendedor ser removido de verdade,
    -- insere uma cópia dos dados dele numa tabela de "histórico"
    INSERT INTO vendedores_desligados  
    (idvendedor, nome, salario, data_desligamento) -- pega os dados que estão sendo deletado
    VALUES
    (OLD.idvendedor, OLD.nome, OLD.salario, NOW()); -- registra a data/hora atual como data do desligamento
END$$
DELIMITER ;