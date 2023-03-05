/*  AVERAGE PRICE
    MEDIAN LATER!!
    AMPLITUDE
    MIN
    MAX
*/
 SELECT 
    AVG(price + freight_value) AS AVG_TOTAL_AMOUNT,
    MIN(price + freight_value) AS LOWEST_TOTAL_AMOUNT,
    MAX(price + freight_value) AS HIGHEST_TOTAL_AMOUNT,
    (MAX(price + freight_value) - MIN(price + freight_value)) AS AMPLITUDE
FROM tb_order_items