/*
	FULL JOIN (return all rows from both tables)
*/

-- Get all customers and all order even if there is no match 

SELECT 
	*
FROM customers 
FULL JOIN orders 
ON customers.id = orders.customer_id

SELECT 
	customers.id,
	customers.first_name, 
	customers.country,
	orders.order_id,
	orders.order_date
FROM customers 
FULL JOIN orders 
ON customers.id = orders.customer_id