
--insertar columna dentro de otra
--La consulta SELECT entre paréntesis se ejecuta primero y devuelve el número Máximo
--Luego, ese valor  se utiliza en la consulta externa para encontrar a todos los miembros de la familia con esa caracteristica
SELECT * FROM family_members
WHERE num_books_read = (SELECT MAX(num_books_read) FROM family_members);