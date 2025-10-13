/*
	DATE & TIME FUNCTIONS 

		1 . Part Extraction 
				1 .	DAY 
				2 . MONTH
				3 . YEAR 
				4 . DATEPART 
				5 . DATENAME 
				6 . DATETRUNC 
				7 . EOMONTH

		2 . Format & Casting 
				1 . FORMAT 
				2 . CONVERT 
				3 . CAST

		3 . Calculations 
				1 . DATEADD 
				2 . DATEDIFF 

		4 . Validation
				1 . ISDATE
         
*/

/*
	DAY() -> is used to extract day from the date value .
	MONTH() -> is used to extract month from the date value . 
	YEAR() -> is used to extract year from the date value .

	the output format of DAY() MONTH() and YEAR() is int .

	SYNTAX ->
		DAY(date) 
		MONTH(date) 
		YEAR(date)
*/

SELECT 
	OrderID, 
	OrderDate, 
	DAY(OrderDate) AS day_fun, 
	MONTH(OrderDate) AS month_fun, 
	YEAR(OrderDate) AS year_fun
FROM Sales.Orders 

/*
	DATEPART() -> returns a specific part of a day as a number .

	the output format of DATEPART() is int .

	SYNTAX :
		DATEPART(part, date)
	
	EXAMPLE :
		DATEPART(month, OrderDate)
		DATEPART(mm, OrderDate)
*/

SELECT 
	OrderID, 
	OrderDate,
	CreationTime,
	DATEPART(year, OrderDate) AS year_dp, 
	DATEPART(month, OrderDate) AS month_dp, 
	DATEPART(day, OrderDate) AS day_dp, 
	DATEPART(quarter, OrderDate) AS quarter_dp, 
	DATEPART(week, OrderDate) AS week_dp,
	DATEPART(hour, CreationTime) AS hour_dp, 
	DATEPART(minute, CreationTime) AS minute_dp,
	DATEPART(second, CreationTime) AS second_dp
FROM Sales.Orders

/*
	DATENAME() -> returns the name of specific part of a date 

	the output format is string .

	SYNTAX :
		DATENAME(part, date)
	
	EXAMPLE :
		DATENAME(month, OrderDate)
		DATENAME(mm, OrderDate) 
*/

SELECT 
	OrderID, 
	CreationTime,
	DATENAME(month, CreationTime) AS month_dn,
	DATENAME(day, CreationTime) AS day_dn,
	DATENAME(weekday, CreationTime) AS weekday_dn,
	DATENAME(year, CreationTime) AS year_dn
FROM Sales.Orders

/*
	DATETRUNC() -> truncates the date to the specific part .

	SYNTAX :
		DATETRUNC(month, date) -> it will keep date till month after that everything will be reset 
							      month, day will be reset to 01 
								  hour, minute, second will be reset to 00 

	    DATETRUNC(month, '2025-09-23 13:01:56') -> output : 2025-09-01 00:00:00
*/

SELECT 
	OrderID, 
	CreationTime, 
	DATETRUNC(minute, CreationTime) AS minute_dt, 
	DATETRUNC(hour, CreationTime) AS hout_dt, 
	DATETRUNC(day, CreationTime) AS day_dt, 
	DATETRUNC(month, CreationTime) AS month_dt, 
	DATETRUNC(year, CreationTime) AS year_dt
FROM Sales.Orders 

-- get number of orders for each month 

SELECT 
	DATETRUNC(month, CreationTime) AS "Order Date", 
	COUNT(OrderID) AS "Order Count"
FROM Sales.Orders 
GROUP BY DATETRUNC(month, CreationTime)

-- get number of orders for each year 

SELECT 
	DATETRUNC(year, CreationTime) AS "Order Year", 
	COUNT(OrderID) AS "Order Count"
FROM Sales.Orders 
GROUP BY DATETRUNC(year, CreationTime)

/*
	EOMONTH() -> returns the last day of the month 

	SYNYAX :
		EOMONTH(date) 
*/

SELECT 
	OrderID, 
	CreationTime, 
	EOMONTH(CreationTime) AS end_of_month
FROM Sales.Orders 

-- show me end and start of month 

SELECT 
	OrderID, 
	CreationTime, 
	EOMONTH(CreationTime) AS end_of_month, 
	DATETRUNC(month, CreationTime) AS start_of_month
FROM Sales.Orders 

-- show me the end of month and start of month in format of date not datetime2 or timestamp

SELECT 
	OrderID, 
	CreationTime, 
	EOMONTH(CreationTime) AS end_of_month, 
	CAST(DATETRUNC(month, CreationTime) AS DATE) AS start_of_month 
FROM Sales.Orders 

/*
	PRACTICE PROBLEM 
*/

-- How many orders were placed in each year 

SELECT 
	YEAR(OrderDate) AS year_part, 
	COUNT(OrderID) AS order_count 
FROM Sales.Orders 
GROUP BY YEAR(OrderDate)

SELECT 
	DATEPART(year, OrderDate) AS year_dp,
	COUNT(OrderID) AS order_count 
FROM Sales.Orders 
GROUP BY DATEPART(year, OrderDate)

SELECT 
	DATENAME(year, OrderDate) AS year_dn,
	COUNT(OrderID) AS order_count 
FROM Sales.Orders 
GROUP BY DATENAME(year, OrderDate)

SELECT 
	DATETRUNC(year, OrderDate) AS year_dt,
	COUNT(OrderID) AS order_count 
FROM Sales.Orders 
GROUP BY DATETRUNC(year, OrderDate)

-- How many orders were placed in each month

SELECT
	MONTH(OrderDate) AS month_part, 
	COUNT(*) AS order_count 
FROM Sales.Orders 
GROUP BY MONTH(OrderDate)

SELECT 
	DATEPART(month, OrderDate) AS month_dp, 
	COUNT(*) AS order_count 
FROM Sales.Orders 
GROUP BY DATEPART(month, OrderDate)

SELECT 
	DATENAME(month, OrderDate) AS month_dn, 
	COUNT(*) AS order_count 
FROM Sales.Orders 
GROUP BY DATENAME(month, OrderDate)

SELECT 
	DATETRUNC(month, OrderDate) AS month_dt, 
	COUNT(*) AS order_count 
FROM Sales.Orders 
GROUP BY DATETRUNC(month, OrderDate)

-- slow all orders that were placed during the month of february

SELECT 
	*
FROM Sales.Orders 
WHERE MONTH(OrderDate) = 2

SELECT 
	*
FROM Sales.Orders 
WHERE DATEPART(month, OrderDate) = 2

SELECT 
	*
FROM Sales.Orders 
WHERE DATENAME(month, OrderDate) = 'February'

SELECT 
	*
FROM Sales.Orders 
WHERE OrderDate LIKE '_____02%'