SELECT *,
        strftime('%Y', order_purchase_timestamp) as order_purchase_timestamp

FROM tb_orders

limit 15