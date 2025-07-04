´´´´

SELECT MAX(age) FROM users GROUP BY age

SELECT COUNT(age), age FROM users GROUP BY age

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age asc

SELECT COUNT(age),age FROM users where age > 15 group BY age order BY age asc


--si no se usa una cláusula GROUP BY una simple cláusula WHERE será suficiente