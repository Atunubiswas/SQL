/*
	EOMONTH -> Returns the last day of the month
*/

SELECT 
	OrderID, 
	OrderDate,
	CreationTime,
	EOMONTH(CreationTime) AS endOfMonth,
	EOMONTH(OrderDate) AS endOfMonth2,
	CAST(DATETRUNC(month, CreationTime) AS DATE) AS startOfMonth
FROM Sales.Orders