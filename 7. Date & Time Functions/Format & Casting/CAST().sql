SELECT 
	OrderDate, 
	CreationTime,
	CAST('123' AS INT) AS string_to_int, 
	CAST(123 AS VARCHAR) AS int_to_string,
	CAST('2025-08-20' AS DATE) AS string_to_date, 
	CAST('2025-08-20' AS DATETIME2) AS date_to_datetime,
	CAST(CreationTime AS DATE) AS datetime_to_date
FROM Sales.Orders 

