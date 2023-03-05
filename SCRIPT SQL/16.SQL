/*  ON WHICH DATES MOST/SEVERAL ORDERS WERE ON DEADLINE FOR BEING SHIPPED?
    ON THIS CASE WE USE CAST BECAUSE WE NEED AN EXACTLY VALUE (INT) FOR THE CASE STATEMENT
    BASICALLY A FLOAT NUMBER WOULD DIRECTLY GO TO THE ELSE STATEMENT OR RETURN ERROR
*/
 SELECT 
        COUNT(order_id),
        strftime('%Y-%m-%d', shipping_limit_date) AS DT_ADJUSTED_ALL,
        strftime('%m', shipping_limit_date) AS DT_MONTH,
        strftime('%d', shipping_limit_date) AS DT_DAY,
        CASE CAST (strftime('%w', shipping_limit_date) AS INTERGER)
                when 0 then 'Sunday'
                when 1 then 'Monday'
                when 2 then 'Tuesday'
                when 3 then 'Wednesday'
                when 4 then 'Thursday'
                when 5 then 'Friday'
                else 'Saturday' END AS 'WEEKDAY'
FROM tb_order_items
GROUP BY DT_ADJUSTED_ALL
ORDER BY DT_ADJUSTED_ALL ASC