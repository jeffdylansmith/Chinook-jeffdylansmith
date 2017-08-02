--How many Invoices were there in 2009 and 2011?

SELECT substr(Invoice.InvoiceDate,0,5) as "Year", COUNT (InvoiceId) as "Inv Count"
FROM Invoice
WHERE substr(Invoice.InvoiceDate,0,5)="2009" OR substr(Invoice.InvoiceDate,0,5)="2011"
GROUP BY substr(Invoice.InvoiceDate,0,5);