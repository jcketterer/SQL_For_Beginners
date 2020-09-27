SELECT COUNT(*)
FROM Person.Person

SELECT COUNT(MiddleName)
FROM Person.Person

SELECT AVG(StandardCost)
FROM Production.Product
WHERE StandardCost > 0.00

SELECT AVG(Freight)
FROM Sales.SalesOrderHeader
WHERE TerritoryID = 4

SELECT MAX(ListPrice)
FROM Production.Product

SELECT SUM(P.ListPrice*I.Quantity)
FROM Production.Product P
INNER JOIN Production.ProductInventory I
ON I.ProductID = P.ProductID
WHERE ListPrice > 0