-- Provide a query that shows the top 3 best selling artists

SELECT *
FROM Artist

SELECT *
FROM Album

SELECT * 
FROM Invoice

SELECT *
FROM InvoiceLine

SELECT *
FROM Track


SELECT TOP(3)a.Name,
	SUM(i.Total) AS NumberOfSales,
	COUNT(a.ArtistId) AS AmountOfPurchases
FROM Artist a
	JOIN Album al
		ON a.ArtistId = al.ArtistId
	JOIN Track t
		ON al.AlbumId = t.AlbumId
	JOIN InvoiceLine il
		ON il.TrackId = t.TrackId
	JOIN Invoice i
		ON i.InvoiceId = il.InvoiceId
GROUP BY a.Name
ORDER BY SUM(i.Total) DESC


