
SELECT --SUBQUERIE

        *


FROM(
/* order_id	payment_sequential	payment_type	payment_installments	payment_value */
SELECT
    t2.customer_id,
    COUNT(t1.order_id) AS NUM_ORDERS,
    --MAX(t1.payment_sequential),
    t1.payment_type,
    AVG(t1.payment_installments) AS AVG_INSTALLMENTS,
    SUM(t1.payment_value) AS TOTAL_BY_METHOD
    
--    t3.customer_state,
--    t3.customer_city

--WHERE order_id = 'b81ef226f3fe1789b1e8b2acac839d17'
--LEFT JOIN tb_customers as t3
--ON t2.customer_id = t3.customer_city
FROM tb_order_payments as t1

LEFT JOIN tb_orders as t2
ON t1.order_id = t2.order_id
--WHERE customer_id = '29588af43a7f8d1ac968a59f8a504036'
GROUP BY customer_id, payment_type
ORDER BY customer_id DESC
)