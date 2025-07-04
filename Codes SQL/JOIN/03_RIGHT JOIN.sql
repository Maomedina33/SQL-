SELECT * FROM usuarios          -- se trae todos los datos de dni incluyendo los null
RIGHT JOIN dni 
ON usuarios.idUsuarios = dni.idUsuarios;