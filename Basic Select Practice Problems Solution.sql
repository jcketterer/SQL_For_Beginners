SELECT NationalIDNumber
FROM HumanResources.Employee

SELECT NationalIDNumber, JobTitle
FROM HumanResources.Employee

SELECT TOP 20 PERCENT 
	NationalIDNumber, JobTitle, BirthDate
FROM HumanResources.Employee

SELECT TOP 500 NationalIDNumber AS "SSN", 
	JobTitle AS "Job Title", 
	BirthDate
FROM HumanResources.Employee

SELECT *
FROM Sales.SalesOrderHeader

SELECT TOP 50 PERCENT *
FROM Sales.Customer

SELECT Name AS "Product's Name"
FROM Production.vProductAndDescription

SELECT TOP 400 *
FROM HumanResources.Department

SELECT * 
FROM Production.BillOfMaterials

SELECT TOP 1500 *
FROM Sales.vPersonDemographics