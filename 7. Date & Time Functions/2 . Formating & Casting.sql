/*
	DATETIME2 ->
		
		2025-08-20 18:55:45
		YYYY-MM-dd HH:mm:ss
	
	this YYYY, MM, dd, HH, mm, ss are format specifiers 
*/

/*
	the default date format in SQL is International Standard(ISO 8601)
	EXAMPLE :
		2025-08-20  ->  YYYY-MM-dd

	USA standard  ->  08-20-2025  ->  MM-dd-YYYY
	
	EUROPEAN standard  ->  20-08-2025  ->  dd-MM-YYYY
*/

/*
	FORMATTING -> Changing the format of value form one to another . 
				  changing how the date looks .

	CASTING -> Changing the date type from one to another . 

	FORMATTING AND CASTING :

		1 . FORMATTING :
				1 . FORMAT()

		2 . CASTING
				1 . CONVERT()
				2 . CAST()
*/

/*
	FORMAT() -> changes the format of value from one to another 

	SYNTAX :
		FORMAT(value, format, culture) -> culture is optional 

	EXAMPLE :
		FORMAT(OrderDate, 'dd/MM/yyyy')
		FORMAT(OrderDate, 'dd/MM/yyyy', 'ja-JP') -> here we include the japanese culture 
		FORMAT(1234.56, 'D')

	Default culture is 'en-US'

	USE CASE OF FORMAT :
		1 . like our data can be stored in different locations 
				I . data can be stored in .csv file 
				II . data can be stored in API 
				III . data can be stored in dababase
			so when we collect data from different locations there is a possibility
			that in every location date is in different format . so to convert 
			different types of date value into one standard value we use FORMAT()
*/

SELECT	
	OrderID, 
	CreationTime,
	FORMAT(CreationTime, 'MM-dd-yyyy') AS USA_Standard,
	FORMAT(CreationTime, 'dd-MM-yyyy') AS European_standard,
	FORMAT(CreationTime, 'D') AS D, 
	FORMAT(CreationTime, 'd') AS d,
	FORMAT(CreationTime, 'dd') AS dd,
	FORMAT(CreationTime, 'ddd') AS ddd,
	FORMAT(CreationTime, 'dddd') AS dddd, 
	FORMAT(CreationTime, 'M') AS M,
	FORMAT(CreationTime, 'MM') AS MM,
	FORMAT(CreationTime, 'MMM') AS MMM,		
	FORMAT(CreationTime, 'MMMM') AS MMMM, 
	FORMAT(CreationTime, 'hh') AS hh, 
	FORMAT(CreationTime, 'HH') AS HH,
	FORMAT(CreationTime, 'm') AS m, 
	FORMAT(CreationTime, 'mm') AS mm, 
	FORMAT(CreationTime, 's') AS s, 
	FORMAT(CreationTime, 'ss') AS ss, 
	FORMAT(CreationTime, 'f') AS f, 
	FORMAT(CreationTime, 'ff') AS ff, 
	FORMAT(CreationTime, 'fff') AS fff, 
	FORMAT(CreationTime, 'tt') AS tt
FROM Sales.Orders 

SELECT 
	1234.56 AS actual_number,
	FORMAT(1234.56, 'N') AS N, 
	FORMAT(1234.56, 'P') AS P, 
	FORMAT(1234.56, 'C') AS C, 
	FORMAT(1234.56, 'E') AS E, 
	FORMAT(1234.56, 'F') AS F,
	FORMAT(1234.56, 'N0') AS N0, 
	FORMAT(1234.56, 'N1') AS N1, 
	FORMAT(1234.56, 'N2') AS N2, 
	FORMAT(1234.56, 'N', 'de_DE') AS "Numeric(German)", 
	FORMAT(1234.56, 'N', 'en_US') AS "Numeric(US)"

-- show CreationTime in the following 
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT	
	CreationTime, 
	'Day ' + FORMAT(CreationTime, 'ddd') + FORMAT(CreationTime, ' MMM ') + 
	'Q' + DATENAME(quarter, CreationTime) + ' ' + DATENAME(year, CreationTime) + 
	FORMAT(CreationTime, ' HH:mm:ss tt') AS customized_time
FROM Sales.Orders 

-- show number of orders for each month using format and show date like Feb 2025

SELECT 
	FORMAT(CreationTime, 'MMM yyyy') AS OrderDate,
	COUNT(*) as total_orders 
FROM Sales.Orders 
GROUP BY FORMAT(CreationTime, 'MMM yyyy')

/*
	CONVERT() -> this function is used to change the datatype of a value 
				 and also we can use it to change the format of value

	SYNTAX :
		CONVERT(data type, value, style) 

	EXAMPLE :
		CONVERT(INT, '123') -> string to integer 
		CONVERT(VARCHAR, CreationTime, 32) -> usa type date into string
		CONVERT(VARCHAR, CreationTime, 34) -> europian type date into string 
*/

SELECT 
	CONVERT(INT, '123') AS [string to integer convert],
	CreationTime,
	CONVERT(VARCHAR, CreationTime, 32) AS [US std. Style:32], 
	CONVERT(VARCHAR, CreationTime, 34) AS [EU std. Style:34]
FROM Sales.Orders 

SELECT 
	CreationTime,
	CONVERT(DATE, CreationTime) AS [DATETIME2 to DATE]
FROM Sales.Orders 

/*
	CAST() -> it is used to change the data type of a value 

	SYNTAX :
		CAST(value AS data_type) 

	EXAMPLE :
		CAST('123' AS INT)
*/

SELECT 
	CAST('123' AS INT) [string to int], 
	CAST('2025-08-20' AS DATE) [string to date], 
	CAST('2025-08-20' AS DATETIME2) [string to datetime2 or timestamp]

SELECT 
	CreationTime, 
	CAST(CreationTime AS DATE) [DATETIME2 to DATE]
FROM Sales.Orders 

/*
	FORMAT() VS CONVERT() VS CAST()

	                   CASTING                       FORMATING 

	1 . CAST()     1 . Any type to any type      1 . No formating  

	2 . CONVERT()  2 . Any type to any type      2 . formats only Date & Time
	
	3 . FORMAT()   3 . Any type to only string   3 . formates Date time & Numbers 
*/

