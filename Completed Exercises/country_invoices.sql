-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

--SELECT *
--FROM Invoice
--ORDER BY BillingCountry


SELECT 
	COUNT (InvoiceId) AS NumberOfInvoices,
	BillingCountry
FROM Invoice
GROUP BY BillingCountry