SELECT  
            order_id,
            price,
            freight_value,
            SUM(price + freight_value) AS TOTAL
        
FROM        tb_order_items
GROUP BY    order_id
HAVING      TOTAL > 100
ORDER BY    TOTAL ASC