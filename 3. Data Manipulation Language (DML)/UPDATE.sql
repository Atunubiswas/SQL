-- UPDATE is used to update a particular value 

-- Update the value of score to 0 where id is 6

UPDATE customers 
SET score = 0
WHERE (id = 6)

-- Update the value of score to 0 and country to USA where id is 10

UPDATE customers 
SET score = 0,
	country = 'USA'
WHERE (id = 10)

-- Update the value of score to 0 where the score is NULL 

UPDATE customers 
SET score = 0
WHERE score IS NULL

SELECT * FROM customers 