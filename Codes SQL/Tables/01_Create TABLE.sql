--CREAR Tabla base
CREATE TABLE personas (
  id INT,
  name VARCHAR(45),
  age INT,
  email VARCHAR(100),
  created date
  );

-- restriccion NULL
CREATE TABLE personas2 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  created date
  );

-- Restriccion UNIQUE
CREATE TABLE personas3 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime,
  UNIQUE(id)
  );
                              -- Échale siempre un ojo a que se esten aplicando realmente todas las restricciones --
  -- Clave primaria --
CREATE TABLE personas4 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime,
  PRIMARY KEY(id)
  );

   -- Restriccion CHECK --
CREATE TABLE personas5 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime,
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK (age>=18)
  );

   -- DEFAULT -- no quiero que este NULL o en blanco.
CREATE TABLE personas6 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK(age>=18)
  );

-- AUTO_INCREMENT--
  CREATE TABLE personas7 (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK(age>=18)
  );
  
  -- EJERCICIO 1. CREAR UNA TABLA DE COMENTARIOS PARA PLATZI
    CREATE TABLE Tabla_de_comentarios (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  post_id INT NOT NULL,
  n_likes INT ,
  n_replies INT,
  age int,
  is_spam VARCHAR(1), 
  is_reported VARCHAR(1),
  has_replies VARCHAR(1),
  has_emojis VARCHAR(1),
  content VARCHAR(200) NOT NULL,
  email VARCHAR(100),
  Created datetime DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE(id),
  FOREIGN KEY(user_id) REFERENCES Tabla_de_comentarios(id),
  FOREIGN KEY(post_id) REFERENCES Tabla_de_comentarios(id),
  CHECK(age>=14)
  );
  --Así se veria la tabla Post
      CREATE TABLE POST (
  Post_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  n_likes INT ,
  n_replies INT,
   content VARCHAR(200) NOT NULL,
  Created datetime DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE(Post_id),
  FOREIGN KEY(user_id) REFERENCES Tabla_de_usuarios(usuarios_id)
  );