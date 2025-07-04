-- al actualizar como borrar datos trata siempre de que lleven un where y probar antes con SELECT --
UPDATE usuarios SET age = "21" WHERE idUsuarios = 8

UPDATE usuarios SET age = "21", init_date = '2020-10-12' WHERE idUsuarios = 8


UPDATE Movies SET Director = "John Lasseter" WHERE Title = "A Bug's Life";    --probar primero con SELECT
