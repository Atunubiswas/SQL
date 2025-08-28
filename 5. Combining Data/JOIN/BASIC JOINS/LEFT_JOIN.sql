
/*
	LEFT JOIN (return all rows from the left and only matcing from right)
*/

-- Get all customers along with their orders, including those without orders 

SELECT 
	*
FROM customers 
LEFT JOIN orders 
ON customers.id = orders.customer_id

-- Get all customers (id, first_name, country, order_id, order_date) along with their orders, including those without orders 


SELECT 
	customers.id, 
	customers.first_name, 
	customers.country,
	orders.order_id,
	orders.order_date 
FROM customers
LEFT JOIN orders 
ON customers.id = orders.customer_id