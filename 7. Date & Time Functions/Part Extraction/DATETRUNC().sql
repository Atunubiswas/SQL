/*
	DATETRUNC() -> Truncates the date of the specific part 
*/

SELECT 
	OrderID, 
	OrderDate,
	CreationTime,
	DATETRUNC(minute, CreationTime) AS till_min_dt,
	DATETRUNC(hour, CreationTime) AS till_hour_dt,
	DATETRUNC(day, CreationTime) AS till_day_dt,
	DATETRUNC(month, CreationTime) AS till_month_dt,
	DATETRUNC(year, CreationTime) AS till_year_dt
FROM Sales.Orders