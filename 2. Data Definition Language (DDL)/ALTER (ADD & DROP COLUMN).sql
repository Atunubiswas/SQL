-- ALTER (ALTER is used to add new column at the end of the table)

-- 'ADD' is used a add a new column at the end of the table 

ALTER TABLE persons   
ADD	Email VARCHAR(50) NOT NULL

-- 'DROP COLUMN' is used to delete a particular colum from the table 

ALTER TABLE persons
DROP COLUMN phone_no

SELECT * FROM persons

