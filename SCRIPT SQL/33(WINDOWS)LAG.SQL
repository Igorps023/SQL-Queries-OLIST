SELECT  
        
        strftime('%Y-%m', shipping_limit_date) AS "DT_ADJUSTED_ALL",
        SUM(price) AS "SUMPRICES",
        LAG("SUMPRICES") OVER (PARTITION BY "SUMPRICES" ORDER BY strftime('%Y-%m', DT_ADJUSTED_ALL)) AS LAG

FROM tb_order_items
GROUP BY DT_ADJUSTED_ALL
ORDER BY DT_ADJUSTED_ALL DESC