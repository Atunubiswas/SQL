-- retrieve all customers and sort the results by the highest score first (customers table)

-- we use DESC (highest to lowest) and ASC (lowest to highest)

SELECT * 
FROM customers 
ORDER BY score DESC

-- retrieve all customers and sort the results by the lowest score first (customers table)

SELECT *
FROM customers 
ORDER BY score ASC

-- retrieve all customers and sort according to the country name (customer table)

SELECT * 
FROM customers 
ORDER BY country ASC

-- retrieve all customers and sort the results by the country and then by the highest score (customer table)

SELECT * 
FROM customers 
ORDER BY country ASC, score DESC

-- retrieve all customers and sort the results by the score and then by the country (customer table)

SELECT * 
FROM customers 
ORDER BY score DESC, country ASC