-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID,
--  Date of the invoice and billing country

SELECT c.FirstName as "First Name", c.LastName as "Last Name", i.InvoiceID as "Inv. ID", i.InvoiceDate as "Invoice Date", i.BillingCountry as "Country"
FROM Invoice i, Customer c
WHERE c.Country="Brazil";