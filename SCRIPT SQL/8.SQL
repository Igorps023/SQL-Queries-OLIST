/* Trazer os 5 produtos mais requisitados
em cada uma das categorias


SELECT 
customer_id, count (1) as "QTD"


FROM tb_orders
GROUP BY customer_id
*/

/* NULLS FIRST*/

SELECT COUNT(DISTINCT seller_state)

FROM tb_sellers
LIMIT 10