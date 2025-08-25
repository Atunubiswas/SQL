-- INSERT INTO

-- insert values using column names

INSERT INTO customers (id, first_name, country, score)
VALUES 
	(6, 'Anna', 'USA', NULL),
	(7, 'Sam', NULL, 100)

-- insert values of only id, first_name ans country

INSERT INTO customers (id, first_name, country) 
VALUES 
	(8, 'MAX', 'USA'),
	(9, 'Andreas', 'Germany')

-- Insert values without column name

INSERT INTO customers 
VALUES 
	(10, 'Sara', NULL, NULL)

SELECT * FROM customers 
