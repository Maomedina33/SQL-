-- indice general  
-- con este codigo activas el buscador de todos los datos relacionados a name
CREATE INDEX idx_name ON usuarios(name);

-- indice unico
CREATE UNIQUE INDEX idx_name ON usuarios(name);

CREATE UNIQUE INDEX idx_name ON usuarios(name, surname);

--borrar el indice
DROP INDEX idx_name on usuarios;

name_table: 'Tabla de comentarios'

comment_id  INT PRYMARI KEY NOT NULL
content string
-- tabla de comentarios


