-- INNER JOIN RELACION 1:1
--usuarios con sus dni--
SELECT * FROM usuarios        -- consejo: ve organizando por partes
INNER JOIN dni 

SELECT * FROM usuarios          -- (OJO ANTES DE EJECUTAR ANALIZA 2 VECES LA SINTAXIS DE LOS Id que vas a unir en ON)
INNER JOIN dni 
ON usuarios.idUsuarios = dni.idUsuarios;
                                --se obtienen las filas coincidentes

-- INNER JOIN RELACION 1:N --
SELECT * FROM usuarios 
JOIN companies
ON usuarios.company_id = companies.company_id;

--especificar columnas de union--
SELECT companies.name, usuarios.name FROM companies
JOIN usuarios
on companies.company_id = usuarios.company_id;

-- otro ejemplo
SELECT character.name, character_actor.actor_name
FROM character
JOIN character_actor 
ON character.id = character_actor.character_id ;

-- INNER JOIN RELACION N:M--
SELECT * 
FROM usuarios_languages 
INNER JOIN usuarios ON usuarios_languages.idUsuarios = usuarios.idUsuarios
JOIN languages ON usuarios_languages.languages_id = languages.languages_id;   --Tratar Siempre de relacionar las columnas iguales--

-- tratar siempre de relacionar las columnas iguales R=N:M
SELECT usuarios.name, languages.name
FROM usuarios_languages 
INNER JOIN usuarios ON usuarios_languages.idUsuarios = usuarios.idUsuarios
JOIN languages ON usuarios_languages.languages_id = languages.languages_id; 

--otro caso similar R=N:M
SELECT character.name, actor.name
FROM character_actor
INNER JOIN character ON character_actor.character_id = character.id
INNER JOIN actor ON character_actor.actor_id = actor.id;

-- JOIN WITH WHERE
SELECT character.name, tv_show.name
FROM character  --OJO MIRA  QUE CAMBIO LA SINTAXIS
INNER JOIN character_tv_show ON character .id = character_tv_show.character_id 
INNER JOIN tv_show ON character_tv_show.tv_show_id = tv_show.id  --ACA CAMBIO EL ENFOQUE DEL JOIN
WHERE character.name != 'Willow Rosenberg' AND tv_show.name != 'How I Met Your Mother' ;