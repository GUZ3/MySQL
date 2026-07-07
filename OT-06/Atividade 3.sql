DELIMITER $$
CREATE TRIGGER vendedor_desligado
BEFORE DELETE ON vendedor
FOR EACH ROW
BEGIN
    INSERT INTO vendedores_desligados
    (idvendedor, nome, salario, data_desligamento)
    VALUES
    (OLD.idvendedor, OLD.nome, OLD.salario, NOW());
END$$
DELIMITER ;