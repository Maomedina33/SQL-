-- alterar tabla Añadir un nuevo campo
-- en este caso el campo es apellido 
ALTER TABLE personas8
ADD surname varchar(100);

-- renombrar una columna--
ALTER TABLE personas8
RENAME COLUMN surname TO description;

--MODIFICAR TABLA
-- QUIERO QUE EL CAMPO SEA MAS LARGO-- 
ALTER TABLE personas8
MODIFY COLUMN description varchar (250);

-- QUIERO BORRAR ESE CAMPO O COLUMNA--
ALTER TABLE personas8
DROP COLUMN description;