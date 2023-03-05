/* Users By City and State */
/* WHERE UTILIZADO PARA FILTRO DE LINHAS ANTES DE QUALQUER AGRUPAMENTO */
/* HAVING FILTRA GRUPOS OU RESULTADOS AGREGADOS */

SELECT
    customer_state,
    customer_city,
    COUNT(DISTINCT customer_unique_id) AS QTD
FROM tb_customers
WHERE customer_state = 'SP'
GROUP BY customer_state, customer_city
HAVING QTD >= 1000
ORDER BY QTD DESC, customer_state ASC, customer_city ASC