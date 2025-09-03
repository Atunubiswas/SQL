/*
	DATEDIFF() -> Find the difference between two dates

	Syntax :
		DATEDIFF(part, start_date, end_date)
*/

-- Calculate the age of employees 

SELECT 
	CONCAT(FirstName, ' ', LastName) AS employeeName,
	BirthDate, 
	DATEDIFF(year, BirthDate, GETDATE()) AS age
FROM Sales.Employees

-- Find the average shipping duration in days for each month

SELECT 
	DATENAME(month, OrderDate) AS month_orderDate,
	AVG(DATEDIFF(day, OrderDate, ShipDate)) AS shipping_duration
FROM Sales.Orders 
GROUP BY DATENAME(month, OrderDate)

-- Find the number of days between each order and previous order 

SELECT 
	OrderID, 
	OrderDate AS CurrentOrderDate,
	LAG(OrderDate) OVER (ORDER BY OrderDate) AS PreviousOrderDate,
	DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS time_duration
FROM Sales.Orders