SELECT  t2.product_category_name_english,
        t1.*

FROM TABELAGERADA as t1

LEFT JOIN tb_product_category_name_translation AS T2
ON t1.product_category = t2.product_category_name