SELECT name, dni_number FROM usuarios          -- se trae todos los datos de usuarios incluyendo los null
LEFT JOIN dni 
ON usuarios.idUsuarios = dni.idUsuarios;

SELECT * FROM usuarios         
LEFT JOIN dni 
ON usuarios.idUsuarios = dni.idUsuarios;

--ejemplo
SELECT character.name, actor.name
FROM character - cambia SINTAXIS
LEFT JOIN character_actor ON character.id = character_actor.character_id  --ojo, aca cambia el enfoque
LEFT JOIN actor ON character_actor.actor_id =
actor.id;