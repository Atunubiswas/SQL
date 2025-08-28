/*
	FULL JOIN (returns only rows that dont match in either tables)
*/

-- Find customers without orders and orders without customers 

SELECT 
	*
FROM customers 
FULL JOIN orders 
ON customers.id = orders.customer_id
WHERE (customers.id IS NULL OR orders.customer_id IS NULL)