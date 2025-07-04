
--COALESCE 
--recibe una lista de columnas y devuelve el valor de la primera columna que no sea nula.
SELECT name, COALESCE(tank, gun, sword) as weapon FROM fighters;
