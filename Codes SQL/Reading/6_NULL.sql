

--quiero cambiar los valores NULL de la tabla por otro valor.
SELECT name, surname, IFNULL(age,0) FROM usuarios;

SELECT * FROM users WHERE email IS NULL;

SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NOT NULL AND age = 15;




