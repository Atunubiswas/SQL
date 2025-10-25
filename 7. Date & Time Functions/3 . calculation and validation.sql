/*
	Calculation :
		1 . DATEADD()
		2 . DATEDIFF()
*/

/*
	DATEADD() : it is used to add a unit of specific part to the date or datetime .

	Syntax :
		DATEADD(part, unit, value)
*/

-- add 2 dates to all orderDate 

SELECT
	OrderDate, 
	DATEADD(day, 2, OrderDate) NewDate
FROM Sales.Orders 

/*
	DATEDIFF() : it is used to calculate difference between two date or datetime .

	Syntax :
		DATEDIFF(part, start date, end date)
*/

SELECT	
	OrderDate, 
	ShipDate,
	DATEDIFF(day, OrderDate, ShipDate)
FROM Sales.Orders 

/*
	Validation :
		1 . ISDATE() : it is used to check it the value is date or time or datetime . 
*/

SELECT 
	ISDATE('2025-12-30'),
	ISDATE('a 2025-12-30')