--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT InvoiceId, COUNT(InvoiceId) as "Total Lines"
FROM InvoiceLine
GROUP BY InvoiceId;