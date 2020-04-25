-- Provide a query showing Customers(just their full names, customer ID and country) who are not in the US.
SELECT	
	CustomerId,
	CONCAT(FirstName,' ', LastName) AS Fullname,
	Country
FROM Customer
WHERE Country != 'USA'