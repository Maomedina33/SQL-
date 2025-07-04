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
