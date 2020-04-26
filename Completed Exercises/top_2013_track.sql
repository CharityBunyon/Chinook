-- Provide a query that shows the most purchased track of 2013.


SELECT *
FROM Track

SELECT *
FROM Invoice

SELECT *
FROM InvoiceLine


SELECT 
	t.Name,
	SUM(il.Quantity) AS NumberOFPurchasedTrack
FROM Track t
	JOIN InvoiceLine il
		ON t.TrackId = il.TrackId
	JOIN Invoice i
		ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY t.TrackId, t.Name
ORDER BY SUM(il.Quantity) DESC
