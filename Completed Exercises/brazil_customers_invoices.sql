-- Provide a query showing the Invoices of customers who are from Brazil. 
--The result table should show the customer's full name, Invoice ID, Date of the invoice and billing country.


SELECT 
	Invoice.InvoiceId,
	Customer.FirstName,
	Customer.LastName,
	Invoice.InvoiceDate,
	Invoice.BillingCountry
	
FROM Customer
	JOIN Invoice
		ON Customer.CustomerId = Invoice.CustomerId
WHERE Country = 'Brazil'