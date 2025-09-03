/*
	YEAR() -> Returns only year 
	MONTH() -> Returns only month 
	DAY() -> Returns only day 

	Ourput format for this functions is integer
*/

SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	YEAR(CreationTime) AS year,
	MONTH(CreationTime) AS month,
	DAY(CreationTime) AS day
FROM Sales.Orders