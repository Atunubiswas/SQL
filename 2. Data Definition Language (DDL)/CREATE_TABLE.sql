-- CREATE TABLE

/*
	Create a new table called persons 
	With columns: id, person_name, birth_date, and phone_no
*/

CREATE TABLE persons (
	id INT NOT NULL,
	person_name VARCHAR(100) NOT NULL, 
	birth_date DATE, 
	phone_no VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY (id)
)

SELECT * 
FROM persons