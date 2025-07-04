CREATE VIEW v_adult_users AS 
SELECT name, age
FROM usuarios
WHERE age >= 18;

SELECT * FROM v_adult_users;


--eliminar vista
DROP VIEW v_adult_users;