-- static values 

SELECT 123 AS static_value

SELECT 'Hello World' AS static_string

-- select is and first_name from the customer table and add a new static column named (customer_type) value of each volumn should be static like 'New customer'

SELECT 
	id,         -- base column
	first_name, -- base column
	'New customer' AS customer_type -- static values
FROM customers 