--What are the respective total sales for each of those years?

SELECT substr(InvoiceDate,0,5) as "Year", SUM(Total)  as "Total Sales"
FROM Invoice
WHERE substr(InvoiceDate,0,5) BETWEEN "2009" AND "2011"
GROUP BY substr(InvoiceDate,0,5);