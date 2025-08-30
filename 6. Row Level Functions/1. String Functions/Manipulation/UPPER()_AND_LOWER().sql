/*
	UPPER() -> Converts string unto upper case 
	LOWER() -> Converts string into lower case 
*/

-- converts customers first name into lowercase

SELECT 
	LOWER(first_name) AS first_name, 
	country
FROM customers 

-- converts customers first name into uppercase

SELECT 
	UPPER(first_name) AS first_name, 
	country 
FROM customers 