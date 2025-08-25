-- DELETE 
-- 'DELETE' is used to delete data from the table
-- Delete data of persons whose id is greater than 5

DELETE FROM customers 
WHERE (id > 5)

SELECT * FROM customers 

-- Delete all data from the table 
/*
	2 ways to delete whole table 
		1 . DELETE FROM persons
		2 . TRUNCATE TABLE persons (TRUNCATE is more faster than the DELETE command)
*/

TRUNCATE TABLE persons

SELECT * FROM persons
