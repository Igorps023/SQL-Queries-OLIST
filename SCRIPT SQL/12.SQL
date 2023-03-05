/*  GROUP BY STATE AND CITY
    NUM_OF_OCCURRENCES AS ROWS, UNIQUE_IDS PER CITY
    SORTED BY MOST POPULOUS CITIES DESCENDING
*/

SELECT 
 
customer_state,
customer_city,
COUNT(*) AS NUM_ROWS,
COUNT (DISTINCT customer_unique_id ) AS UNIQUE_ID
FROM tb_customers

GROUP BY customer_state, customer_city
ORDER BY UNIQUE_ID DESC