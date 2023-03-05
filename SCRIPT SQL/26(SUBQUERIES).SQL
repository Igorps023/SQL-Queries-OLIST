/* TOTAL DE RECEITA OBTIDA POR VENDEDOR,
TOTAL DE ITENS COMERCIALIZADOS

TOTAL DE PRODUTOS VENDIDOS = COUNT product_id
TOTAL DE RECEITA OBTIDA = SUM(price)
GROUPBY seller_id

JOINS
seller_city
seller_state
FROM tb_sellers
*/

SELECT 
    t1.seller_id AS ID_VENDEDOR,
    COUNT(t1.product_id) AS QTD_PRODUTOS_VENDIDOS,
    ROUND(SUM(t1.price),2) AS TOTAL_VENDAS, -- SOMA VENDAS, DUAS CASAS DECIMAIS
    ROUND(SUM(t1.price)/COUNT(t1.product_id),2) AS VENDA_P_PRODUTO,
    seller_state AS ESTADO,
    UPPER(t2.seller_city) AS CIDADE 



from tb_order_items AS t1

LEFT JOIN tb_sellers AS t2
ON t1.seller_id = t2.seller_id
GROUP BY t2.seller_id
ORDER BY TOTAL_VENDAS DESC
