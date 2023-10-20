DELIMITER //
CREATE TRIGGER tu_cliente
BEFORE UPDATE ON cliente
FOR EACH ROW
BEGIN
   IF NEW.dt_nascimento < '2004-12-31 00:00:00' THEN 
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'A data não pode ser menor que o ano de 2004.';
   END IF;
END;//
DELIMITER ;

DELIMITER //
CREATE TRIGGER tu_vendedor
BEFORE UPDATE ON vendedor
FOR EACH ROW
BEGIN
   IF NEW.dt_nascimento < '2004-12-31 00:00:00' THEN 
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'A data não pode ser menor que o ano de 2004.';
   END IF;
END;//
DELIMITER ;

UPDATE vendedor 
  SET dt_nascimento = '2003-01-01 01:12:21'
 WHERE id = 1;
  
UPDATE cliente 
  SET dt_nascimento = '2001-11-21 12:33:21'
 WHERE id = 1;