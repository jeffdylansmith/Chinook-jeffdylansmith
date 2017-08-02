--Provide a query that shows the # of invoices per country.

SELECT BillingCountry as "Country", COUNT(InvoiceId) as "# of Invoices"
FROM Invoice
GROUP BY BillingCountry;