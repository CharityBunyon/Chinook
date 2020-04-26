-- How many Invoices were there in 2009 and 2011?
-- The COUNT() function returns the number of rows that matches a specified criteria.


SELECT
	COUNT(InvoiceId) AS 'Number of 2009-2011 Invoices'
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00.000' AND '2011-12-31 00:00:00.000'