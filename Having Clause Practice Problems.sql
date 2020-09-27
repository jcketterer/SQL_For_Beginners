SELECT 
	TerritoryID, SUM(TotalDue) AS [Total Sales]
FROM Sales.SalesOrderHeader
GROUP BY TerritoryID
HAVING SUM(TotalDue) > 10000000

SELECT 
	ST.Name AS TerritoryName, SUM(TotalDue) AS [Total Sales]
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
GROUP BY ST.Name
HAVING SUM(TotalDue) > 10000000

SELECT Color, COUNT(*) AS [Color Count]
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color 
HAVING COUNT(*) >= 20

SELECT P.Name AS [Product Name], COUNT(SOD.OrderQty) AS [Product Order Count]  
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.SalesOrderDetail SOD
ON SOD.SalesOrderID = SOH.SalesOrderID
LEFT OUTER JOIN Production.Product P
ON P.ProductID = SOD.ProductID
WHERE SOH.OrderDate BETWEEN '1/1/2006' AND '12/31/2006'
GROUP BY P.Name
HAVING COUNT(SOD.OrderQty) >= 200

SELECT P.FirstName + ' ' + P.LastName AS [Customer Name], COUNT(*) AS [Orders Placed]
FROM Sales.SalesOrderHeader SOH
LEFT OUTER JOIN Sales.Customer C
ON C.CustomerID = SOH.CustomerID
LEFT OUTER JOIN Person.Person P
ON P.BusinessEntityID = C.PersonID
WHERE SOH.OrderDate BETWEEN '1/1/2005' AND '12/31/2006'
GROUP BY P.FirstName + ' ' + P.LastName
HAVING COUNT(*) >= 6
ORDER BY [Orders Placed] DESC 