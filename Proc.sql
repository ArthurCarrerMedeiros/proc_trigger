USE proc_trigger;

DELIMITER //
CREATE PROCEDURE ClienteVendedor()
BEGIN
   SELECT nome, dt_nascimento, telefone, email
     FROM cliente
   UNION
   SELECT nome, dt_nascimento, telefone, email
     FROM vendedor
   ORDER BY dt_nascimento;
END //
DELIMITER ;

CALL ClienteVendedor();
