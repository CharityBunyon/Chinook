-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
-- Relationship between Artist.ArtistId & Track.Composer

--SELECT *
--FROM InvoiceLine

--SELECT *
--FROM Track

--SELECT * 
--FROM Artist

SELECT DISTINCT 
	t.Name AS PurchasedTrackName,
	a.Name AS ArtistName,
	il.*
FROM InvoiceLine il
	JOIN Track t
		ON il.TrackId = t.TrackId
	JOIN Artist a
		ON a.Name = t.Composer
ORDER BY (a.Name)