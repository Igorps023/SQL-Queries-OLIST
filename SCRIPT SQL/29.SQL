SELECT *

FROM
(
SELECT  t1.seller_id AS SELLER_ID,
        t1.seller_state AS SELLER_STATE,
        UPPER(t1.seller_city) AS SELLER_CITY,
        t2.price as SALES,
        t2.order_id


FROM tb_sellers AS t1

LEFT JOIN tb_order_items as t2
ON t1.seller_id = t2.seller_id
)