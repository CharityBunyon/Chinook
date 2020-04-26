-- Provide a query that shows the top 5 most purchased songs.

SELECT *
FROM Track

SELECT *
FROM Invoice

SELECT *
FROM InvoiceLine


SELECT TOP(5) t.Name,
	COUNT(il.TrackId) AS NumberOFPurchased
FROM Track t
	JOIN InvoiceLine il
		ON t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY COUNT(il.TrackId) DESC
