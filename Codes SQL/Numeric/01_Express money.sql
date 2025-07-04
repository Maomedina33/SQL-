--Expresar (MILLONES DE DOLARES)
SELECT 
Title, 
(domestic_sales + international_sales)/1000000 AS"Combined_sales millions dollars"
FROM movies 
INNER JOIN Boxoffice ON Id = Movie_id;

--Expresar (euros a DOLARES)
SELECT nombre, precio AS 'Precio en dolares', 
round(precio * 0.85,2) AS 'Precio en Euros'
FROM producto

--filtrar cuando hay varios atributos en una columna (TEXTO Y NUMERO)
SELECT * 
FROM robots 
WHERE name LIKE  "%Robot 20__";