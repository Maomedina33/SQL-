-- WHERE
FILTRA Antes de agrupar los datos (GROUP BY)
Filtra filas individuales
No permite funciones de agregación como SUM, AVG, COUNT, etc.
--ejemplo:
WHERE edad > 18

-- LIKE
SELECT * FROM robots WHERE name LIKE "%Robot%"

--filtrar cuando hay varios atributos en una columna
SELECT * 
FROM robots 
WHERE name LIKE  "%Robot 20__";

--EJEMPLO DE FILTRAR CON SUBSTRACT
SELECT * FROM robots WHERE SUBSTR(name, -4) LIKE '20__';

--FILTRAR TENIENDO LOS DOS ULTIMOS DATOS
SELECT * FROM robots
WHERE SUBSTR( location,-2) LIKE 'NY';