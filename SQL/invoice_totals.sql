--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent 
--name for all invoices and customers.

SELECT e.FirstName as "Employee First Name", e.LastName as "Employee Last Name", 
c.FirstName as "Customer.FirstName", c.LastName as "Customer Last Name", i.[Total] as "Invoice Total"
FROM Employee e, Customer c, Invoice i
WHERE i.CustomerId = c.SupportRepId and c.SupportRepId = e.EmployeeId;