SELECT categories.CategoryName, ProductName, QuantityPerUnit, UnitsInStock
FROM products
NATURAL JOIN categories
WHERE UnitsInStock
ORDER BY CategoryName, ProductName