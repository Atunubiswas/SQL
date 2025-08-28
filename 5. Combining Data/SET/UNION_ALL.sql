/*
	UNION ALL 
		1 . Returns all rows from both queries, including dublicates .
*/

SELECT FirstName, LastName FROM Sales.Customers 
UNION ALL 
SELECT FirstName, LastName FROM Sales.Employees