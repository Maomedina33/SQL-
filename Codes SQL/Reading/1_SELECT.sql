
--EXPRESION EN PORCENTAJE
SELECT Title,
(Rating*10) AS "Rating in percent" 
FROM Movies
INNER JOIN Boxoffice ON Id = Movie_id;

--EXPRESION PARES
SELECT title, year
FROM movies
WHERE year % 2 = 0;

--PASAR TEXTO A MAYUSCULAS 'upper' , minuscul'lower'
SELECT upper(nombre) AS 'NOMBRE', precio FROM producto;

--LOS DOS PRIMEROS CARÁCTERES DEL NOMBRE DEL FABRICANTE
SELECT 
    UPPER(LEFT(nombre, 2)) AS 'MAYUS_FABRIC'
FROM fabricante;

--EJEMPLO DE SUBSTR
SUBSTR(name, 1, 5) is the first 5 characters of the name.
SUBSTR(name, -4) is the last 4 characters of the name.

SELECT * FROM robots WHERE SUBSTR(name, -4) LIKE '20__';
--Es otra forma de devolver todos los robots que han sido lanzados entre 2000 y 2099.
