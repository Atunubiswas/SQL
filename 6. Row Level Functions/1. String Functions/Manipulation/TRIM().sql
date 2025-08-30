/*
	TRIM() -> Removes leading and trailing spaces
*/

SELECT * FROM customers 

-- Find customers whose first name contains leading or trailing spaces 

SELECT 
	first_name 
FROM customers 
WHERE first_name != TRIM(first_name)

SELECT 
	first_name,
	LEN(first_name) AS len_name, 
	LEN(TRIM(first_name)) AS len_trim_name 
FROM customers 
WHERE LEN(first_name) != LEN(TRIM(first_name))