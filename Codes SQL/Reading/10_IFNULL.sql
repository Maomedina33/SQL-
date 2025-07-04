--IFNULL
--Quiero cambiar los valores nulos de la tabla por otro valor.
SELECT name, surname, IFNULL(age,0) FROM usuarios;

