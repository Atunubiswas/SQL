/*
    Check for NULL functions :
        1 . IS NULL 
        2 . IS NOT NULL 
    
    IS NULL : IS NULL is used to check if the value if null 
    IS NOT NULL : IS NOT NULL is used to check if the value is not null
*/

-- Update the score to 0 where the score is NULL 

UPDATE Sales.Customers
SET
    score = 0
WHERE score IS NULL

SELECT score FROM Sales.Customers

-- Print FirstName and LastName for the customer where both are not null 

SELECT
    FirstName,
    LastName
FROM Sales.Customers
WHERE FirstName IS NOT NULL AND LastName IS NOT NULL

-- Print firstname from the table and if the firstname is null then print 'unknown' there 
-- use ISNULL() and IS NULL both 

SELECT
    ISNULL(FirstName, 'Unknown') AS newName
FROM Sales.Customers

UPDATE Sales.Customers
SET
    FirstName = 'Unknown'
WHERE FirstName IS NULL

SELECT FirstName FROM Sales.Customers