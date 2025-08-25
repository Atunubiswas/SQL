/*
	GROUP BY 
	(combine rows with the same value)
	Aggregates a column by another column
*/

-- find the total score of each country

SELECT 
	country, -- country column
	SUM(score) -- aggregation (it is showing 'no column found' in the column name of score
FROM customers
GROUP BY country

-- AS (ALIAS) shorthand name or label assigned to a column or table in a query

SELECT 
	country, -- country column
	SUM(score) AS total_score
FROM customers
GROUP BY country

-- find the total_score and total number of customers from each country

SELECT
	country,
	SUM(score) AS total_score,
	COUNT(first_name) AS total_customers  -- we can also write COUNT(id) in place of COUNT(first_name)
FROM customers
GROUP BY country