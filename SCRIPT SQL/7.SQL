/* SELECT 
customer_id, count (1) as "QTD"


FROM tb_orders
GROUP BY customer_id
*/

/* NULLS FIRST*/

SELECT  seller_state,
        count(seller_id) as QTD
        

FROM    tb_sellers
GROUP BY seller_state
ORDER BY QTD DESC 