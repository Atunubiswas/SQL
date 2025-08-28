-- Get all customers along with their orders, but only for customers who have placed an order 

-- using FULL ANTI JOIN 

SELECT 
	*
FROM customers 
FULL JOIN orders 
ON customers.id = orders.customer_id 
WHERE (customers.id IS NOT NULL AND orders.customer_id IS NOT NULL)

-- using LEFT ANTI JOIN 

SELECT 
	* 
FROM customers 
LEFT JOIN orders 
ON customers.id = orders.customer_id 
WHERE orders.customer_id IS NOT NULL

-- using RIGHT ANTI JOIN 

SELECT 
	* 
FROM customers 
RIGHT JOIN orders 
ON customers.id = orders.customer_id 
WHERE customers.id IS NOT NULL