-- Muda temporariamente o "delimitador" de comando de ; para $$
-- Isso é necessário porque o corpo do TRIGGER tem vários ";" internos,
-- e sem isso o MySQL ia interpretar cada ";" como o fim do comando inteiro
DELIMITER $$

-- Cria um gatilho chamado "verifica_salario"
CREATE TRIGGER verifica_salario

-- Define QUANDO o gatilho executa:
-- ANTES de um UPDATE (atualização) na tabela "vendedor"
BEFORE UPDATE ON vendedor

-- Define que a verificação roda para CADA LINHA que for atualizada
-- (se o UPDATE afetar 5 vendedores de uma vez, o trigger roda 5 vezes)
FOR EACH ROW

BEGIN
    -- Compara o valor NOVO (NEW) que está tentando ser salvo
    -- com o valor ANTIGO (OLD) que estava no banco antes do UPDATE
    IF NEW.salario < OLD.salario THEN -- (então)
    
        -- Se o novo salário for menor que o salário antigo,
        -- dispara um erro personalizado e IMPEDE que o UPDATE aconteça
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'O salário não pode ser menor que o atual.';
        
    END IF;
END$$

-- Volta o delimitador padrão para ; (só afeta a definição do trigger, não os dados)
DELIMITER ;