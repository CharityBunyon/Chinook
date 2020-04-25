-- Provide a query that shows the invoices associated with each sales agent. 
--The result table should include the Sales Agent's full name.

--SELECT * 
--FROM Employee

--SELECT * 
--FROM Customer

--SELECT *
--FROM Invoice




--SELECT 
--  Employee.EmployeeId,
--  Employee.LastName,
--  Employee.FirstName,
--  Customer.SupportRepId
--FROM Employee
--	JOIN Customer
--		ON Customer.SupportRepId = Employee.EmployeeId
--	JOIN Invoice
--		ON Invoice.CustomerId = Customer.CustomerId
--WHERE Title = 'Sales Support Agent'


SELECT
	CONCAT(e.FirstName, ' ', e.LastName) as EmployeeName, 
	e.Title,
	e.EmployeeId,
	c.SupportRepId,
	i.InvoiceId
FROM Invoice i
	JOIN Customer c 
		ON c.CustomerId=i.CustomerId
	JOIN Employee e 
		ON e.EmployeeId=c.SupportRepId