/* Difference in days JULIAN METHOD */
SELECT 
    order_purchase_timestamp,
    order_approved_at,
    JULIANDAY(order_approved_at) - JULIANDAY(order_purchase_timestamp) AS DIFF

FROM tb_orders
LIMIT 10