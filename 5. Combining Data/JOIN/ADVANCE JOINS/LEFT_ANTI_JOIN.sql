/*
	LEFT ANTI JOIN (return rows from the left that has no match in right)
*/

-- Get all the customers who have not placed any order 

SELECT 
	*
FROM customers 
LEFT JOIN orders 
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL