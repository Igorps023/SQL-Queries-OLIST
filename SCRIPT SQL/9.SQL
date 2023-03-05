/*Count
number of rows
distinct ids
distinct stats (if = x, then coverage of all country)*/

SELECT  count(*) as num_of_rows,
        count(DISTINCT customer_unique_id) as distinct_persons

FROM tb_customers