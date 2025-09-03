/*
	DATEADD() -> Adds or substracts a specific time interval to/from a date

	Syntax :
		DATEADD(part, add_interval, date_value) 
*/

SELECT 
	OrderID,
	OrderDate,
	DATEADD(day, 2, OrderDate) AS add2Day,
	DATEADD(month, -3, OrderDate) AS minus3Month,
	DATEADD(year, 2, OrderDate) AS add2Year
FROM Sales.Orders 