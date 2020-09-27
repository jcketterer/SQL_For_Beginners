SELECT P.FirstName, P.LastName, PP.PasswordHash
FROM Person.Person P
INNER JOIN Person.[Password] PP
ON P.BusinessEntityID = PP.BusinessEntityID

SELECT E.BusinessEntityID, 
		E.NationalIDNumber, 
		E.JobTitle, 
		EH.DepartmentID, 
		EH.StartDate, 
		EH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EH
ON E.BusinessEntityID = EH.BusinessEntityID

SELECT P.FirstName, P.LastName, PP.PasswordHash, EA.EmailAddress
FROM Person.Person P
INNER JOIN Person.[Password] PP
ON P.BusinessEntityID = PP.BusinessEntityID
INNER JOIN Person.EmailAddress EA
ON EA.BusinessEntityID = P.BusinessEntityID

