-- creamos una tabla con el ejemplo guardar email antiguo con trigger--
CREATE TABLE `hello_mysql`.`email_history` (
  `email_history_id` INT NOT NULL AUTO_INCREMENT,
  `idUsuarios` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);

--sintaxis
  CREATE TRIGGER tg_email
BEFORE/AFTER  INSERT/UPDATE/DELETE  --elige entre esas opciones
ON usuarios

--creamos el trigger
delimiter |             /*DELIMITER | cambia el delimitador de comandos temporalmente lo cual es esencial
                         al definir bloques de código que contienen múltiples instrucciones SQL.
                         */  --
CREATE TRIGGER tg_email
AFTER UPDATE ON usuarios
FOR EACH ROW 
BEGIN
 IF OLD.email <> NEW.email THEN
   INSERT INTO email_history (idUsuarios,email)
   VALUES (OLD.idUsuarios, OLD.email);
 END IF;
END;

|
delimiter ;
--probamos lanzando una actualizacion de contraseña para brias
UPDATE usuarios SET email = "mouredev@gmail.com" WHERE idUsuarios = 1;

--eliminar trigger
DROP TRIGGER tg_email;