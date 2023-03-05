SELECT  
        SUM(price) as price_amount_total,
        SUM(freight_value) as freight_value_total
FROM tb_order_items