/*
	MEMBERSHIP OPERATOR 
		1 . IN      (if value is in the list)
		2 . NOT IN  (if value is not in the list)
*/

-- Retrieve all customers who are either from Germany or USA

SELECT * FROM customers WHERE country = 'Germany' OR country = 'USA'

SELECT 
	*
FROM customers 
WHERE country IN ('Germany', 'USA')

-- Retrieve all customers who are not from Germany or USA

SELECT 
	*
FROM customers 
WHERE country NOT IN ('Germany', 'USA')
