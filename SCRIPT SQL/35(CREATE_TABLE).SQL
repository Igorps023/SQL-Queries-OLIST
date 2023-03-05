
CREATE TABLE TABELAGERADA AS 


SELECT 

--product_id AS product_id,

product_category_name AS product_category, 

AVG(product_length_cm)AS AVG_product_length_cm,
MIN(product_length_cm) AS MINproduct_length_cm,

AVG(product_description_lenght) AS AVG_product_description_lenght,
MIN(product_description_lenght) AS MINproduct_description_lenght,

AVG(product_photos_qty) AS AVG_product_photos_qty,
MIN(product_photos_qty) AS MINproduct_photos_qty,

AVG(product_weight_g) AS AVG_product_weight_g,
MIN(product_weight_g) AS MINproduct_weight_g,

AVG(product_length_cm) AS AVG_product_length_cm,
MIN(product_length_cm) AS MINproduct_length_cm,

AVG(product_height_cm) AS AVG_product_height_cm,
MIN(product_height_cm) AS MINproduct_height_cm,

AVG(product_width_cm) AS AVG_product_width_cm, 
MIN(product_width_cm) AS MIN_product_width_cm

FROM tb_products
GROUP BY product_category
ORDER BY product_category ASC
