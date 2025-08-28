/*
	INTERSECT
		1 . Returns all rows that are common in both queries 
*/

-- return customers who are also employees at the same time 

SELECT FirstName, LastName FROM Sales.Customers
INTERSECT
SELECT FirstName, LastName FROM Sales.Employees