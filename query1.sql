SELECT od.OrderID,
	   od.ProductID,
       products.ProductName,
       od.UnitPrice,
       od.Quantity,
       od.Discount,
       od.Quantity*od.UnitPrice*(1-od.Discount) AS Total
FROM orderdetails AS od
JOIN products
ON od.ProductID = products.ProductID
ORDER BY od.OrderID, ProductID