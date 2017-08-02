--Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName || " " || e.LastName as AgentName, SUM(i.Total) as "Total Sales $"
FROM Employee e, Invoice i, Customer c
WHERE i.CustomerId = c.SupportRepId
AND e.EmployeeId = c.SupportRepId
GROUP BY AgentName;