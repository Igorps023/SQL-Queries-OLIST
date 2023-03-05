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