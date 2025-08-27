/*
	RIGHT ANTI JOIN (returns rows from right that has no match in left)
*/

-- Get all orders without matching customers 

SELECT 
	*
FROM customers 
RIGHT JOIN orders 
ON customers.id = orders.customer_id
WHERE customers.id IS NULL

SELECT 
	*
FROM orders 
LEFT JOIN customers 
ON orders.customer_id = customers.id
WHERE customers.id IS NULL