/*SUBQUERIE POR USUARIO FILTRO SOMENTE
P/ AQUELES C MAIS DE 850 EM VENDAS*/
with tb_nova as (

SELECT  t1.seller_id AS SELLER_ID_,
        t1.seller_state AS SELLER_STATE,
        UPPER(t1.seller_city) AS SELLER_CITY,
        ROUND(SUM(t2.price),2) as TOTALSALES,
        MIN(t2.price) as MINSALES,
        ROUND(AVG(t2.price),2) as AVGSALES,
        MAX(t2.price) as MAXSALES,
        COUNT(t2.order_id) AS ORDERS_MADE


FROM tb_sellers AS t1

LEFT JOIN tb_order_items as t2
ON t1.seller_id = t2.seller_id

GROUP BY SELLER_ID_

)

SELECT * FROM tb_nova
WHERE TOTALSALES > 850
ORDER BY TOTALSALES ASC