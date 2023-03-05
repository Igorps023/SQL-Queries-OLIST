/*Users By City and State */

SELECT
    customer_state,
    customer_city,
    COUNT(DISTINCT customer_unique_id) AS QTD
FROM tb_customers

GROUP BY customer_state, customer_city
ORDER BY QTD DESC, customer_state ASC, customer_city ASC