/*
	CONCAT() -> Combines multiple string values into one
*/

-- show a list of customers first name together with their country in one column 

SELECT 
	first_name, 
	country, 
	CONCAT(first_name, '-', country) AS firstname_country
FROM customers 