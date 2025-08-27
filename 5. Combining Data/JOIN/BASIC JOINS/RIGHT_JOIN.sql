/*
	RIGHT JOIN (return all rows from the right and only matching from left)
*/

-- Get all customers (id, first_name, country, order_id, order_date) along with their orders, including orders without matching customers 

SELECT 
	customers.id,
	customers.first_name,
	customers.country,
	orders.order_id,
	orders.order_date
FROM customers 
RIGHT JOIN orders 
ON customers.id = orders.customer_id

-- Get all customers (id, first_name, country, order_id, order_date) along with their orders, including orders without matchibg customers  (using LEFT JOIN)

SELECT 
	customers.id,
	customers.first_name,
	customers.country,
	orders.order_id,
	orders.order_date 
FROM orders 
LEFT JOIN customers 
ON orders.customer_id = customers.id