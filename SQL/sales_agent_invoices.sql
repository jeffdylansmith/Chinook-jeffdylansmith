--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the 
--Sales Agent's full name.

SELECT DISTINCT e.FirstName, e.LastName, Invoice.InvoiceId
FROM Employee e, Customer c
LEFT JOIN Invoice  ON Invoice.CustomerId = c.SupportRepId;