DELIMITER $$
CREATE TRIGGER verifica_salario
BEFORE UPDATE ON vendedor
FOR EACH ROW
BEGIN
    IF NEW.salario < OLD.salario THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O salário não pode ser menor que o atual.';
    END IF;
END$$
DELIMITER ;