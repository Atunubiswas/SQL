/*
	TOP(Limit)
	Restricts the number of rows returned
*/

-- retrieve just top 3 rows data (customer table)

SELECT TOP(3)
	*
FROM customers

-- retrive top 3 customers with highest score (customer table)

SELECT TOP(3)
	*
FROM customers 
ORDER BY score DESC

-- retrieve the lowest 2 customers based on the score (customer table)

SELECT TOP(2)
	*
FROM customers 
ORDER BY score ASC

-- get the two most recent order from (orders table)

SELECT TOP(2)
	*
FROM orders 
ORDER BY order_date DESC