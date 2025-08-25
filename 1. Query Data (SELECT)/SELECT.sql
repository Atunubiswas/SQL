-- select all columns from the table 
SELECT *
From customers 

-- select particular columns from the table 
-- select first_name, country score from the table 

SELECT
	first_name,
	country,
	score 
FROM customers

-- select just first_name, score, country from the table 

SELECT 
	first_name,
	score,
	country
FROM customers