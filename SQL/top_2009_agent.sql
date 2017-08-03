--Which sales agent made the most in sales in 2009?

SELECT AgentName, MAX("Total Sales $") as "Sales $" 
FROM
	(
	SELECT e.FirstName || " " || e.LastName as AgentName, SUM(i.Total) as "Total Sales $"
	FROM Employee e, Invoice i, Customer c
	WHERE i.CustomerId = c.SupportRepId
	AND e.EmployeeId = c.SupportRepId
	AND substr(i.InvoiceDate,0,5) = "2009"
	GROUP BY AgentName
	);