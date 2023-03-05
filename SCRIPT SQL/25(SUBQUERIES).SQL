/*SELECT      
    order_id,
    order_item_id

FROM tb_order_items

where order_id IS NULL
ORDER BY order_item_id DESC */






SELECT *


FROM tb_order_items
WHERE order_id = '8272b63d03f5f79c56e9e4120aec44ef'
ORDER BY order_item_id DESC