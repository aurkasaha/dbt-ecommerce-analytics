select 
o.order_id,
o.user_id,
o.created_at,
sum(oi.sale_price) as total_order_value
from {{ref('stg_orders')}} o
join {{ref('stg_order_items')}} oi 
on o.order_id = oi.order_id
group by 1,2,3
