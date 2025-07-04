RIGHT OUTER JOIN
-- En mysql no existe el full join

-- uso correcto deL UNION--
SELECT usuarios.idUsuarios AS u_user_id, dni.idUsuarios AS d_user_id
FROM usuarios
LEFT JOIN dni
ON usuarios.idUsuarios = dni.idUsuarios
UNION
SELECT usuarios.idUsuarios AS u_user_id, dni.idUsuarios AS d_user_id
FROM usuarios
RIGHT JOIN dni
ON usuarios.idUsuarios = dni.idUsuarios;