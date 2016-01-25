SELECT CategoryName, ProductName AS CheapestProduct, MinCategoryPrice
FROM (SELECT CategoryName, MIN(UnitPrice) AS MinCategoryPrice
	  FROM Products
      NATURAL JOIN Categories
      GROUP BY CategoryName) AS t1
NATURAL JOIN (SELECT CategoryName, ProductName, UnitPrice
	  FROM Products
      NATURAL JOIN Categories) AS t2
WHERE t1.MinCategoryPrice = t2.UnitPrice