/* Consulta a pedidos com invoices geradas */ 
SELECT *

FROM tb_orders
WHERE order_status IN ('invoiced', 'delivered')