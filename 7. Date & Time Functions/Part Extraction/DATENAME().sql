/*
	DATENAME() -> Reaturns the name of a spefic part of a date 
	Output format is string 
*/

SELECT 
	OrderID, 
	OrderDate,
	CreationTime,
	DATENAME(year, CreationTime) AS year_dn,
	DATENAME(month, CreationTime) AS month_dn,
	DATENAME(day, CreationTime) AS day_dn,
	DATENAME(weekday, CreationTime) AS weekday_dn,
	DATENAME(hour, CreationTime) AS hour_dn
FROM Sales.Orders