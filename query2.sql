SELECT City, CompanyName, ContactName, 'Customer' AS Relationship
FROM customers
UNION
SELECT City, CompanyName, ContactName, 'Supplier' AS Relationship
FROM suppliers
ORDER BY City, ContactName