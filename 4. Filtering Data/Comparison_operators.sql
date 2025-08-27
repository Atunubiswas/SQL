/* 
	FILTER OPERATORS 
		1 . Comparison operators 
		2 . Logical operators 
		3 . Range operators 
		4 . Membership operators 
		5 . Search operators 
*/

/*
	COMPARISON OPERATORS 
		1 . =
		2 . <> =!
		3 . >
		4 . >=
		5 . <
		6 . <=
*/

-- Retrive all customers who are from germany

SELECT 
	*
FROM customers 
WHERE country = 'Germany'

-- Retrieve all customers who are not from germany 

SELECT 
	* 
FROM customers
WHERE country != 'Germany'

SELECT * FROM customers WHERE country <> 'Germany'

-- Retrieve all customers with score greater than 500

SELECT * FROM customers WHERE score > 500

-- Retrieve all customers with score more than equals to 500

SELECT * FROM customers WHERE score >= 500

-- Retrive all customers with score less than 500

SELECT * FROM customers WHERE score < 500

-- Retrieve all customers with less than or equals to 500

SELECT * FROM customers WHERE score <= 500
