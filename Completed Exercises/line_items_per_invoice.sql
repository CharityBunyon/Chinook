-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

--SELECT
--	InvoiceId
--FROM InvoiceLine

--SELECT *
--FROM InvoiceLine
--ORDER BY InvoiceId DESC



SELECT
	COUNT(InvoiceLine.InvoiceId) AS NumberOfLineItems
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId
