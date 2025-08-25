-- INSERT using SELECT

-- INSERT data from 'customers' to 'persons' table

INSERT INTO persons(id, person_name, birth_date, phone_no)
SELECT 
	id,
	first_name, 
	NULL,
	'Unknown no'
FROM customers 

SELECT * FROM persons