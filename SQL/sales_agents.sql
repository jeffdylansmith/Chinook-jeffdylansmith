--Provide a query showing only the Employees who are Sales Agents.

SELECT FirstName, LastName
FROM Employee e
WHERE e.Title="Sales Support Agent";