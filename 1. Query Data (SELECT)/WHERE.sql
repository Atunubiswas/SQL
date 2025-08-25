-- select customers whose score is not equals to 0

SELECT *
FROM customers 
WHERE (score != 0)

-- selects only first_name and score from the table whose score is not equals to 0

SELECT 
	first_name,
	score 
FROM customers 
WHERE (score != 0)

-- Select customer name who is from Germany country . select only first_name and country name of those person 

SELECT 
	first_name,
	country
FROM customers
WHERE (country = 'Germany')