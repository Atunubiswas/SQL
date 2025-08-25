/*
	HAVING 
	(Filters data after Aggregation)
	'HAVING' is used to filter the data after aggregation or GROUPBY
	'HAVING' cannot be used without Aggregation
	'WHERE' is used to filter the data before aggregation or GROUPBY
	'WHERE' can be used without Aggregation
*/

-- find sum of scores of each country and return only those countrys with total score more then 750

SELECT 
	country,
	SUM(score) AS total_score 
FROM customers 
GROUP BY country
HAVING SUM(score) > 750

-- find the average score for each country considering only customers with a score not quals to 0
-- and resturn only those countries with an average score greater than 430

SELECT 
	country,
	AVG(score) AS avg_score
FROM customers
WHERE (score != 0)
GROUP BY country
HAVING AVG(score) > 450