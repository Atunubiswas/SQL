/*
	LOGICAL OPERATORS 
		1 . AND 
		2 . OR 
		3 . NOT 
*/

-- Retrieve all customers who are from USA and have a score greater then 500 

SELECT 
	*
FROM customers 
WHERE country = 'USA' AND score > 500

-- Retrieve all customers who are either from USA or have a score greater than 500

SELECT 
	*
FROM customers 
WHERE country = 'USA' OR score > 500

-- Retrieve all customers with a score not less than 500

SELECT 
	*
FROM customers 
WHERE NOT score < 500

