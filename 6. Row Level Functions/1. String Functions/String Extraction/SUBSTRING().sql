/*
	SUBSTRING() -> Extracts a part of string from a specific position 
*/

-- After the second character extract two characters 

SELECT 
	first_name, 
	SUBSTRING(first_name, 3, 2) AS sub_name
FROM customers 

-- After the second character extract All characters 

SELECT 
	first_name, 
	SUBSTRING(first_name, 3, LEN(first_name) - 3 + 1) AS sub_name 
FROM customers 

-- Retrive a list of customers first names after removing the first character 

SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(TRIM(first_name)) - 2 + 1) AS sub_name
FROM customers 