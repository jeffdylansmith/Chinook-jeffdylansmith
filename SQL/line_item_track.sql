--Provide a query that includes the purchased track name with each invoice line item.

SELECT i.InvoiceId as "Invoice Id", i.InvoiceLineId as "Line Id", t.Name as "Track Name"
FROM InvoiceLine i
LEFT JOIN Track t ON i.TrackId = t.TrackId;