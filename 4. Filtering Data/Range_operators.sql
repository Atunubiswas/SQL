/*
	RANGE OPERATOR 
		1 . BETWEEN (checks if the value is in range between upper bound and lower bound)
*/

-- Retrieve all customers whose score falls in the range between 100 to 500 

SELECT * FROM customers WHERE score >= 100 AND score <= 500

SELECT 
	*
FROM customers 
WHERE score BETWEEN 100 AND 500
