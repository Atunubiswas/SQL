/*
	INNER JOIN (return only matching rows from both tables)
*/

-- Get all customers along with their orders, but only for customers who have placed an order

SELECT 
	*
FROM customers 
INNER JOIN orders 
ON customers.id = orders.customer_id

SELECT 
	c.id,
	c.first_name,
	c.country,
	o.order_id,
	o.order_date
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id