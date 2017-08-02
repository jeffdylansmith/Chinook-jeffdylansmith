--Provide a query that includes the purchased track name AND 
--artist name with each invoice line item.

SELECT i.InvoiceId as "Invoice Id", i.InvoiceLineId as "Line Id", t.Name as "Track Name", a.Name as "Artist Name"
FROM InvoiceLine i
LEFT JOIN Track t ON i.TrackId = t.TrackId
LEFT JOIN Album x ON t.AlbumId = x.AlbumId
LEFT JOIN Artist a ON x.ArtistId = a.ArtistId;
