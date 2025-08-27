/*
	SEARCH OPERATOR 
		1 . LIKE (use to search in the table)
				I . % (% means anything)
				II. _ (_ means number of positions)
*/

-- Find all customers whose first  name start with 'M'

SELECT 
	*
FROM customers 
WHERE first_name LIKE 'M%'

-- Find all customers whose first name ends with 'n'

SELECT 
	*
FROM customers 
WHERE first_name LIKE '%n'

-- Find all customers whose first name contains letter 'r'

SELECT 
	*
FROM customers
WHERE first_name LIKE '%r%'

-- Find all customers whose first name has 'r' in the third position

SELECT 
	*
FROM customers 
WHERE first_name LIKE '__r%'