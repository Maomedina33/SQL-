SELECT Age,
CASE
   WHEN age > 17 THEN 'Es mayor de edad'
   ELSE 'Es menor de edad'
 END AS agetext
 FROM usuarios;
 

 SELECT Age,
CASE
   WHEN age >= 19 THEN 'Es mayor de edad'
   WHEN age = 18 THEN 'Acaba de cumnplir la mayoria de edad' -- TIENE OTRA CONDICION--
   ELSE FALSE     -- BULIANO--
 END AS agetext
 FROM usuarios;

 SELECT *,
CASE 
      WHEN species = 'human' THEN 'Talk'
      WHEN species ='dog' THEN 'Bark'
      WHEN species ='cat' THEN 'Meow'
ELSE "is not sound"
END AS Sound
FROM friends_of_pickles;