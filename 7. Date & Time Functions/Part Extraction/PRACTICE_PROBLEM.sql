-- PRACTICE PROBLEM 

-- 1 . How many orders were placed each year ?

SELECT 
	CAST(DATETRUNC(year, CreationTime)AS DATE),
	COUNT(*) AS count_orders 
FROM Sales.Orders
GROUP BY CAST(DATETRUNC(year, CreationTime)AS DATE)

SELECT 
	YEAR(CreationTime) AS year,
	COUNT(*) AS count_orders 
FROM Sales.Orders 
GROUP BY YEAR(CreationTime)

-- How many orders were placed each month 

SELECT 
	DATETRUNC(month, CreationTime) AS date_time,
	COUNT(*) AS count_orders 
FROM Sales.Orders 
GROUP BY DATETRUNC(month, CreationTime)

SELECT 
	MONTH(CreationTime) AS month,
	COUNT(*) AS count_orders 
FROM Sales.Orders 
GROUP BY MONTH(CreationTime)

SELECT 
	DATEPART(month, CreationTime) AS month,
	COUNT(*) AS count_orders 
FROM Sales.Orders 
GROUP BY DATEPART(month, CreationTime)

SELECT 
	DATENAME(month, CreationTime) AS month,
	COUNT(*) AS count_orders 
FROM Sales.Orders 
GROUP BY DATENAME(month, CreationTime)

-- show all orders that were placed during the month of February

SELECT 
	*
FROM Sales.Orders 
WHERE MONTH(OrderDate) = 2

SELECT 
	*
FROM Sales.Orders 
WHERE DATEPART(month, CreationTime) = 2