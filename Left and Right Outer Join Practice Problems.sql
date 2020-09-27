SELECT SP.BusinessEntityID, SP.SalesYTD, ST.Name AS TerritoryName 
FROM Sales.SalesPerson SP 
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SP.TerritoryID

SELECT P.FirstName, P.LastName, SP.BusinessEntityID, SP.SalesYTD, ST.Name AS TerritoryName 
FROM Sales.SalesPerson SP 
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SP.TerritoryID
INNER JOIN Person.Person P
ON P.BusinessEntityID = SP.BusinessEntityID
WHERE ST.Name IN ('Northeast', 'Central')

SELECT P.Name,
	 P.ListPrice, 
	 PS.Name AS ProductSubCategoryName, 
	 PC.Name AS ProductCategoryName
FROM Production.Product P 
LEFT OUTER JOIN Production.ProductSubcategory PS 
ON PS.ProductSubcategoryID = P.ProductSubcategoryID
LEFT OUTER JOIN Production.ProductCategory PC
ON PC.ProductCategoryID = PS.ProductCategoryID
ORDER BY ProductCategoryName DESC, ProductSubCategoryName ASC