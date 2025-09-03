/*
	FORMAT() -> Format a date or time value

	Systax :
		1 . FORMAT(value, format)
		2 . FORMAT(OrderDate, 'dd/MM/yyyy')
*/

-- Days Formatting

SELECT 
	OrderID,
	CreationTime,
	FORMAT(CreationTime, 'd') AS d,
	FORMAT(CreationTime, 'dd') AS dd,
	FORMAT(CreationTime, 'ddd') AS ddd,
	FORMAT(CreationTime, 'dddd') AS dddd
FROM Sales.Orders

-- Month Formatting 

SELECT 
	OrderID, 
	CreationTime,
	FORMAT(CreationTime, 'MM') AS MM,
	FORMAT(CreationTime, 'MMM') AS MMM,
	FORMAT(CreationTime, 'MMMM') AS MMMM
FROM Sales.Orders 

-- format creationtime into month-day-year and day-month-year format 

SELECT 
	CreationTime,
	FORMAT(CreationTime, 'MM-dd-yyyy') AS MM_dd_yyyy,
	FORMAT(CreationTime, 'dd-MM-yyyy') AS dd_MM_yyyy
FROM Sales.Orders

-- Show creation time using the following format 
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
	CreationTime,
	'Day ' + FORMAT(CreationTime, 'ddd ') + 
	FORMAT(CreationTime, 'MMM ') + 'Q' +
	DATENAME(quarter, CreationTime) + 
	FORMAT(CreationTime, ' yyyy hh:mm:ss tt') AS customized_format
FROM Sales.Orders 

-- Find number of orders for each month 

SELECT 
	FORMAT(CreationTime, 'MMM yyyy') AS month_year,
	COUNT(*) AS no_of_orders 
FROM Sales.Orders 
GROUP BY FORMAT(CreationTime, 'MMM yyyy')