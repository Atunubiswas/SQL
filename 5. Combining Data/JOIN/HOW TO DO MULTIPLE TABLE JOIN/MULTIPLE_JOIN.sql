/*
	MULTIPLE TABLE JOIN 
*/

/*
	Using SalesDB, Retrieve a list of all orders, along with the related customer,
	product and employee details. For each order. display :
	Order ID, Customers's ID, customer name, Product name, Sales, Price, Sales person's name
*/

SELECT 
	o.OrderID,
	c.CustomerID,
	c.FirstName AS Customer_FirstName,
	c.LastName AS Customer_LastName,
	p.Product AS Product_name,
	o.Sales,
	p.Price,
	e.FirstName AS SalesPerson_FirstName,
	e.LastName AS SalesPerson_LastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID