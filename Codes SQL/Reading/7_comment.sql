

-- Comentario en una linea

/*comentario en
Varias 
lineas*/

DELIMITER | : cambia el delimitador de comandos temporalmente, lo cual es esencial
 al definir bloques de código que contienen múltiples instrucciones SQL.

--ALIAS--
 SELECT 
Title, 
(domestic_sales + international_sales)/1000000 AS"Combined_sales millions dollars"
FROM movies 

--ALIAS MAS AMPLIO 
SELECT c.name, a.name
FROM character AS c
LEFT JOIN character_actor AS ca ON c.id = ca.character_id  
LEFT JOIN actor AS a ON ca.actor_id =
a.id;


--CONCATENAR
--Quiero unir nombre y apellido
SELECT CONCAT ('Nombre:', name,' ','Apellido:',surname) AS ‘Nombre Completo’ FROM usuarios;

--SUBSTRAC o romper cadenas
SUBSTR(name, 1, 5) is the first 5 characters of the name.
SUBSTR(name, -4) is the last 4 characters of the name.
--EJEMPLO DE FILTRAR CON SUBSTRACT
SELECT * FROM robots WHERE SUBSTR(name, -4) LIKE '20__';

```SQL (alt+96) otro lenguaje
 

