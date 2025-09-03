/*
	GETDATE() -> Returns the current date and time at the moment when the query is executed 
*/

SELECT 
	OrderID,
	CreationTime,
	'2025-08-20' AS HardCoded,
	GETDATE() AS Today
FROM Sales.Orders