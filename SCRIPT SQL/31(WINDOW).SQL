-- 3 primeiras compras de cada user
-- Os ids nao se repetem
WITH tb_users_year as (
SELECT  count(customer_id) as Users_Orders_Year,
        --order_id,
        --order_status,
        strftime('%Y', order_purchase_timestamp) AS DT_ADJUSTED_ALL,
        (count(customer_id) - LAG(count(customer_id)) OVER (ORDER BY strftime('%Y', order_purchase_timestamp))) AS DIFF
        --lag(strftime('%Y', order_purchase_timestamp)) OVER (PARTITION BY strftime('%Y', order_purchase_timestamp) ORDER BY strftime('%Y', order_purchase_timestamp) ) AS NEW
        --row_number() OVER (PARTITION BY customer_id ORDER BY strftime('%Y', order_purchase_timestamp)) as numerolinha


FROM tb_orders
GROUP BY DT_ADJUSTED_ALL
order by DT_ADJUSTED_ALL ASC
)
SELECT * FROM tb_users_year+