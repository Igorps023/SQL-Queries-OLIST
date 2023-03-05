-- checar ocorrencias de determinada categoria de produto
-- Todas estão ordenadas pela primeira ocorrência (data mais antiga até a última ocorrência)
-- product_id product_category_name keys table 2
-- preço maior que R$1000
-- USO DO HAVING NA SUBQUERIE PARA FILTRA LINHAS, NAO CONSEGUIMOS UTILIZAR O WHERE
-- POR CONTA DO WHERE REALIZAR A OPERACAO ANTES DA CRIACAO DA WINDOW FUNCTION
-- ENTRE VENDAS QUE CUSTARAM MAIS DE R$1000 REAIS --QUEREMOS AQUELAS QUE TIVERAM ATÉ 3 OCORRENCIAS
WITH TABELA AS (
SELECT  t2.product_category_name,
        row_number() OVER (PARTITION BY t2.product_category_name ORDER BY t1.shipping_limit_date ASC) AS row_cat_count,
        *
        

FROM tb_order_items AS t1

LEFT JOIN tb_products as t2
ON t1.product_id = t2.product_id
WHERE product_category_name IS NOT NULL
AND t1.price >= 1000

ORDER BY product_category_name ASC, price DESC
)

SELECT * FROM TABELA
WHERE row_cat_count <= 3