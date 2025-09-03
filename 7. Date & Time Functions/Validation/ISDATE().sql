/*
	ISDATE() -> check if a value is a date . Return 1 if a value is a valid date
*/

SELECT 
	ISDATE('123') AS check_1,
	ISDATE('2025-05-17') AS check_2,
	ISDATE('2025-17-30') AS check_3,
	ISDATE('2025') AS check_4,
	ISDATE('12') AS check_5