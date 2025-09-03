/*
	CONVERT() 

	Syntax :
		1 . CONVERT(data_type, value)
*/

-- Convert string into integer 

SELECT 
	CONVERT(INT, '123') AS string_to_int

-- Convert string to date

SELECT 
	CONVERT(DATE, '2025-08-31') AS string_to_date

-- Convert datetime to date 

SELECT 
	CreationTime,
	CONVERT(DATE, CreationTime) AS datetime_to_date
FROM Sales.Orders 

-- Convert date to datetime 

SELECT 
	OrderDate,
	CONVERT(DATETIME2, OrderDate) AS date_to_datetime
FROM Sales.Orders

