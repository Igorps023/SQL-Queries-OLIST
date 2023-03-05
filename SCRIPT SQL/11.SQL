/* Difference in days JULIAN METHOD TO SECONDS
Next, check for a differecen of payment time between methods/geoloc
*/
SELECT 
    order_purchase_timestamp,
    order_approved_at,
    ROUND((JULIANDAY(order_approved_at) - JULIANDAY(order_purchase_timestamp)) * 3600) AS DIFF

FROM tb_orders
LIMIT 10