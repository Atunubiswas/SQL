/*
	'CODING ORDER'

	SELECT DISTINCT TOP(2)
		col1,
		SUM(col2)
	FROM table_name
	WHERE (condition)
	GROUP BY any_column_name
	HAVING (condition)
	ORDER BY col1 ASC
*/

/*
	'EXECUTION ORDER'

	1 . FROM
	2 . WHERE 
	3 . GROUP BY 
	4 . HAVING 
	5 . SELECT 
	6 . DISTINCT 
	7 . ORDER BY 
	8 . TOP
*/


