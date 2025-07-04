HAVING

FILTRA Después de agrupar los datos
Filtra grupos agregados
Sí permite funciones de agregación como SUM, AVG, COUNT, etc.

EJEMPLO
HAVING COUNT(*) > 1


-- enumerar los empleados que han registrado más de 10 pedidos.
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) >10 ;


-- La siguiente declaración SQL enumera si los empleados "Davolio" o "Fuller" han registrado más de 25 pedidos:
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;

--enumera el número de clientes en cada país, ordenados de mayor a menor (solo incluye países con más de 5 clientes):
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;


