/*
	EXCEPT 
		1 . Returns all distinct rows from the first query that are not found in the second query 
*/

-- Find the customers who are not employees at the same time 

SELECT FirstName, LastName FROM Sales.Customers
EXCEPT
SELECT FirstName, LastName FROM Sales.Employees

-- Find the employess who are not customers at the same time 

SELECT FirstName, LastName FROM Sales.Employees 
EXCEPT 
SELECT FirstName, LastName FROM Sales.Customers 