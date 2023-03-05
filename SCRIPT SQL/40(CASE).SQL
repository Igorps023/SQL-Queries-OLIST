SELECT  *,
        CASE    WHEN tempo_medio_venda <= 10 THEN "1) ABAIXO_10s"
                WHEN tempo_medio_venda <= 15 THEN "2) ABAIXO_15s"
                ELSE "3) ACIMA_16s"
        END AS  intervalo

FROM    