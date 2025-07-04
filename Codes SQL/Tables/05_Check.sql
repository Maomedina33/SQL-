
   -- Restriccion CHECK --
  /* No deja insertar alguna especificacion, en este caso no vamos a dejar
   insertar una persona menor de 18 años.*/
CREATE TABLE personas4 (
  id INT NOT NULL,
  name VARCHAR(45) NOT NULL,
  age INT,
  email VARCHAR(100),
  Created datetime,
  UNIQUE(id),
  PRIMARY KEY(id),
  CHECK (age>=18)
  );
