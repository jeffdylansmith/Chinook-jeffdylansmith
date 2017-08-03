--Which sales agent made the most in sales over all?

SELECT AgentName, MAX("Total Sales $") as "Sales $" 
FROM
	(
	SELECT e.FirstName || " " || e.LastName as AgentName, SUM(i.Total) as "Total Sales $"
	FROM Employee e, Invoice i, Customer c
	WHERE i.CustomerId = c.SupportRepId
	AND e.EmployeeId = c.SupportRepId
	GROUP BY AgentName
	);