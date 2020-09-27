SELECT 
	PersonType,
	COUNT(*) AS PersonCount
FROM Person.Person
GROUP BY PersonType

SELECT Color, COUNT(*) AS ProductCount
FROM Production.Product
WHERE Color IN ('Red', 'Black')
GROUP BY Color

SELECT TerritoryID, COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY TerritoryID
ORDER BY SalesCount DESC

SELECT ST.Name, COUNT(*) AS SalesCount
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY ST.Name
ORDER BY SalesCount DESC