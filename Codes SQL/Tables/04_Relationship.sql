-- RELACION 1:1 --
CREATE TABLE dni (
dni_id INT AUTO_INCREMENT PRIMARY KEY,
dni_number INT NOT NULL,
idUsuarios INT,
UNIQUE(dni_id),
FOREIGN KEY(idUsuarios) REFERENCES usuarios(idUsuarios)   -- a cual tabla le inserto la clave foranea -- 


-- RELACION 1:N --
CREATE TABLE Companies(
company_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar (100) NOT NULL,
);

ALTER TABLE usuarios
ADD CONSTRAINT fk_companies       --fk_ es el codigo de asignasion de un Foreign Key
FOREIGN KEY (company_id) REFERENCES Companies(company_id)
-- finalmente comparar la relacion entre las dos tablas usuarios, companies, que el registro company_id tenga las mismas caracteristicas en ambas


-- RELACION N:M --
CREATE TABLE languages(            -- CREAMOS LA TABLA LENGUAJES
languages_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL,
);

CREATE TABLE usuarios_languages(            -- aca se crea la tabla intermedia (mix) llamada users_lenguages
usuarios_languages_id INT AUTO_INCREMENT PRIMARY KEY,
idUsuarios INT,
languages_id INT,
FOREIGN KEY (idUsuarios) REFERENCES usuarios(idUsuarios),
FOREIGN KEY (languages_id) REFERENCES languages(languages_id),
UNIQUE(idUsuarios, languages_id)
);
