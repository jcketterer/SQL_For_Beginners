SELECT 
	ST.Name AS TerritoryName,
	SUM(TotalDue) AS [Total Sales - 2006] 
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.SalesTerritory ST 
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '1/1/2006' and '12/31/2006'
GROUP BY ST.Name
HAVING SUM(TotalDue) > 4000000
ORDER BY 1

SELECT PS.Name AS [SubCategory Name], COUNT(*) AS [Prodcut Count]
FROM Production.Product P
INNER JOIN Production.ProductSubcategory PS
ON PS.ProductSubcategoryID = P.ProductSubcategoryID
GROUP BY PS.Name
HAVING COUNT(*) >= 15
ORDER BY 1