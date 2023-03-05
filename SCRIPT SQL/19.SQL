/* t1.order_id, n precisa 
Média de score por categoria de produto
GROUPBY

*/
SELECT  
        ROUND(AVG(t1.review_score),2) AS average_rating,
        
        t3.product_category_name
        

FROM tb_order_reviews as t1

LEFT JOIN tb_order_items as t2
ON t1.order_id = t2.order_id

LEFT JOIN tb_products as t3
ON t2.product_id = t3.product_id

GROUP BY product_category_name
ORDER BY product_category_name DESC