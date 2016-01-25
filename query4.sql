SELECT orders.OrderID, sum(od.Quantity*od.UnitPrice*(1-od.Discount)) AS OrderTotal
FROM orders
JOIN orderdetails AS od
ON orders.OrderID = od.OrderID
GROUP BY orders.OrderID
ORDER BY orders.OrderID