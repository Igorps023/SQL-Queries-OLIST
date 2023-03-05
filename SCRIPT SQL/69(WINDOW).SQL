/*
COMO SABER SE NA ULTIMA COMPRA
O VALOR VENDIDO FOI MAIOR/MENOR QUE O ATUAL
*/

SELECT  ROW_NUMBER() OVER (PARTITION BY seller_id) AS NUM_ORDER,
        seller_id,
        order_id,
        shipping_limit_date,
        SUM(price) AS PRECO, -- 6b353bba58520d286313c6f64cc078ff
        LAG(SUM(price)) OVER (PARTITION BY seller_id ORDER BY SUM(price)) AS LAG_VENDA
        --SUM(price) - LAG(SUM(price)) OVER (PARTITION BY seller_id ORDER BY SUM(price)) AS LAG_VENDA

FROM    tb_order_items
GROUP BY order_id
ORDER BY seller_id DESC, NUM_ORDER ASC
