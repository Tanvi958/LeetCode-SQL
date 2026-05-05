Problem 1251 – Average Selling Price

Approach:

* Use **LEFT JOIN** → keeps products even if no sales
* Match using **purchase_date BETWEEN start_date AND end_date**
* Products with no sales → `SUM(units)` becomes **NULL**
* Division result becomes **NULL**
* Handle using **IFNULL(..., 0)** or `CASE`
* Final idea → **LEFT JOIN + handle NULL → return 0**


Query: 

SELECT 
    p.product_id,
    ROUND(
        IFNULL(SUM(p.price * u.units) / SUM(u.units), 0), 
        2
    ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
   AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
