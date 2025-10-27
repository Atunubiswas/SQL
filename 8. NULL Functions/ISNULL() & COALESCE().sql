/*
	NULL -> NULL means nothing or unknown 

	NULL functions :
		1 . Replace values :
				1 . ISNULL()
				2 . COALESCE()
		2 . Check for NULLS :
				1 . IS NULL 
				2 . IS NOT NULL 
*/

/*
	ISNULL() : it replaces null with a specific value 

	Syntax :
		ISNULL(value, replacement_value)

	Example :
		ISNULL(Shipping_Address, 'Unknown')
		ISNULL(Shipping_Address, Billing_Address)
*/

/*
	COALESCE() : returns first non null value from the list . 

	Syntax : 
		1 . COALESCE(value, replacement_value)

	Example :
		1 . COALESCE(Shipping_Address, 'Unknown')
		2 . COALESCE(Shipping_Address, Billing_Address)
		3 . COALESCE(Shipping_Address, Billing_Address, 'Unknown')
*/

/*
	Difference between ISNULL() and COALESCE()

	ISNULL()                        COALESCE()

	1 . Limited to two values       1 . unlimied values .

	2 . Fast                        2 . Slow

	3 . SQL -> ISNULL()             3 . Available in all databases .
		Oracle -> NVL()
		MySQL -> IFNULL()
*/

-- Display the full name of customers in a single field by merging first and last name 
-- and add 10 bonus points to each customers score 

SELECT 
	FirstName, 
	LastName, 
	COALESCE(FirstName, '') + ' ' + COALESCE(LastName, '') AS FullName,
	Score,
	COALESCE(Score, 0) + 10 AS newScore
FROM Sales.Customers 


-- add 10 bonus point to the score of each customers 

SELECT 
	score, 
	10 + ISNULL(score, 0) AS bonusScore
FROM Sales.Customers 

-- Add first name and last from the table and give the column name as full name 
-- firstname and lastname can be NULL so in case of null we have to return ''

SELECT 
	FirstName, 
	LastName,
	CONCAT(ISNULL(FirstName, ''), ' ', ISNULL(LastName, '')) FullName1,
	ISNULL(FirstName, '') + ' ' + ISNULL(LastName, '') FullName2
FROM Sales.Customers 

/*
	NULL + 10 = NULL
	NULL + 100 = NULL

	'Unknown' + ' ' + 'number' = unknown number
	NULL + 'Unknown' + ' ' + 'number' = NULL
*/

SELECT 
	FirstName, 
	LastName 
FROM Sales.Customers 


SELECT 
	COALESCE(FirstName, LastName, 'Unknown') 
FROM Sales.Customers 