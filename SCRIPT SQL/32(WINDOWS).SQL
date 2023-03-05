-- 3 ULTIMAS COMPRAS DE CADA ANO, FORAM FEITAS EM QUAL MODALIDADE
/*SELECT  customer_id,
        order_id,
        order_status,
        strftime('%Y', order_purchase_timestamp) AS DT_ADJUSTED_ALL,
        row_number() OVER (PARTITION BY customer_id ORDER BY strftime('%Y', order_purchase_timestamp)) as numerolinha


FROM tb_orders

order by customer_id DESC*/

SELECT *

FROM tb_orders

WHERE strftime('%Y', order_purchase_timestamp) LIKE '2017'
