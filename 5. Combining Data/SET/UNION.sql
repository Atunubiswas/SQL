/*
	UNION SET OPERATOR 
		1 . Returns all distinct rows from both queries 
		2 . Removes dublicate rows from the result 
*/

-- combine all data from employees and customers into one table 

SELECT 
	FirstName,
	LastName 
FROM Sales.Customers

UNION

SELECT 
	FirstName, 
	LastName
FROM Sales.Employees