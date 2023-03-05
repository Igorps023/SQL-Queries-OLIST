/*t2.product_category_name,*/
SELECT 
        COUNT(t1.order_id) AS ORDERS_MADE,
        /*COUNT(t1.product_id),*/
        t2.product_category_name

FROM tb_order_items AS t1

LEFT JOIN tb_products AS t2
ON t1.product_id = t2.product_id

WHERE t2.product_category_name <> 'informatica_acessorios'

GROUP BY product_category_name
ORDER BY ORDERS_MADE DESC