/*
SELECT COUNT(*) AS NUM_LINHAS

FROM tb_order_reviews


SELECT 
	seller_id,
    seller_city,
    seller_state,
    CASE
    	WHEN seller_state = 'SP' then 'Paulista'
        WHEN seller_state = 'RJ' then 'Carioca'
        ELSE 'OUTRO'
    END AS 'Classificacao'
FROM tb_sellers

--WHERE       review_score IS NULL
--GROUP BY    review_score
--ORDER BY    review_score DESC

*/

SELECT      
            review_score,
            COUNT(*) AS 'PREENCHIDO+VAZIO',
            COUNT(review_comment_title) AS 'PREENCHIDO',
            COUNT(*) - COUNT(review_comment_title) as 'VAZIO'
FROM        tb_order_reviews
GROUP BY review_score
ORDER BY review_score DESC