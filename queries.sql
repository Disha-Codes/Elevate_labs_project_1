/* SELECT *
FROM customers
WHERE FirstName IS NULL
   OR LastName IS NULL
   OR Gender IS NULL
   OR BirthDate IS NULL
   OR City IS NULL
   OR JoinDate IS NULL
   OR CustomerID IS NULL; */
   
/* SELECT * FROM retail_db.products
where ProductID is null
or Category is null
or SubCategory is null
or UnitPrice is null
or CostPrice is null; */


/* SELECT * FROM retail_db.store
where City is null
or StoreName is null
or Region is null; */

/* SELECT * FROM retail_db.transactions
where TransactionID is null
or Date is null
or CustomerID is null
or ProductID is null
or StoreID is null
 or Quantity is null
 or Discount is null
 or PaymentMethod is null; */

/*SELECT
    Category,
    SubCategory,
    SUM(UnitPrice) AS Total_Sales,
    SUM(UnitPrice - CostPrice) AS Total_Profit,
    ROUND(
        (SUM(UnitPrice - CostPrice) / SUM(UnitPrice)) * 100,
        2
    ) AS Profit_Margin_Percentage
FROM retail_db.products
GROUP BY Category, SubCategory
ORDER BY Profit_Margin_Percentage DESC;*/

/*
SELECT
    t.TransactionID,
    t.Date,
    t.ProductID,
    p.ProductName,
    p.Category,
    p.SubCategory,
    t.Quantity,
    p.UnitPrice,
    p.CostPrice,
    (p.UnitPrice - p.CostPrice) AS profit_per_unit,
    (p.UnitPrice - p.CostPrice) * t.Quantity AS total_profit
FROM retail_db.transactions t
JOIN retail_db.products p
    ON t.ProductID = p.ProductID;
*/


 
   
