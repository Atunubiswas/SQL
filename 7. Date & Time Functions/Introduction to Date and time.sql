/*
	DATE -> DATE is a data type used to store date in the 'yyyy-mm-dd' format .

	TIME -> TIME is a part of a day in format of 'hh:mm:ss' 'Hour:Minute:econd' .

	TIMESTAMP or DATETIME2 -> both are same type of data type used to store date and time in a single 
		                      variable in the format of 'yyyy-mm-dd hh:mm:ss' 

							  TIMESTAMP is used in Oracle, PostgreSQL, MySQL
							  DATETIME2 is used in SQL Server
*/

SELECT	
	OrderID, 
	OrderDate, -- DATE 
	ShipDate, -- DATE 
	CreationTime -- DATETIME2 or TIMESTAMP
FROM Sales.Orders 

SELECT 
	OrderID, 
	OrderDate, 
	CreationTime, 
	'2025-09-23' AS today_date
FROM Sales.Orders 

/*
	GETDATE() -> it returns the current date and time at the moment when the query is executed 
				 the output of GETDATE() is in DATETIME2 or TIMESTAMP format
*/

SELECT 
	OrderID, 
	OrderDate, 
	CreationTime, 
	GETDATE() AS today_date_time
FROM Sales.Orders 

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