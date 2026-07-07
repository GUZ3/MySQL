DELIMITER $$
CREATE TRIGGER salario_minimo
BEFORE INSERT ON vendedor
FOR EACH ROW
BEGIN
    IF NEW.salario < 1200.00 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O salário inicial deve ser de no mínimo R$ 1200,00.';
    END IF;
END$$
DELIMITER ;