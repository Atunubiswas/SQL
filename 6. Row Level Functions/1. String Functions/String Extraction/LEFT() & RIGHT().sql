/*
	LEFT() -> Extracts spefific number of characters from the start of string
	RIGHT() -> Extracts spefific number of characters from the end of string
*/

-- Retrive the first two characters of each first_name 

SELECT 
	first_name, 
	LEFT(first_name, 2) AS first_two
FROM customers 

SELECT 
	first_name, 
	LEFT(TRIM(first_name), 2) AS first_two
FROM customers 

-- Retrieve Last two characters of the first name 

SELECT 
	first_name, 
	RIGHT(first_name, 2) AS last_two
FROM customers 