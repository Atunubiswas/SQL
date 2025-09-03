/*
	DATEPART() -> Returns a specific part of a date as a number 
	Output format is Integer 
*/

SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	DATEPART(year, CreationTime) AS year_dp,
	DATEPART(month, CreationTime) AS month_dp,
	DATEPART(day, CreationTime) AS day_dp,
	DATEPART(hour, CreationTime) AS hour_dp,
	DATEPART(week, CreationTime) AS week_dp,
	DATEPART(quarter, CreationTime) AS quarter_dp
FROM Sales.Orders