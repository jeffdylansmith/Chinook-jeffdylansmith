--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId as "Invoice", COUNT(il.InvoiceLineId) as "# of Invoices"
FROM Invoice i, InvoiceLine il
WHERE i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId; 