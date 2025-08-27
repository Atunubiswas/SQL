/*
	CROSS JOIN (combines every row from left with every row from right)
	    use to find all possible combinations - cartesian join
*/

-- Generate all possible combinations of customers and orders 

SELECT 
	*
FROM customers 
CROSS JOIN orders 