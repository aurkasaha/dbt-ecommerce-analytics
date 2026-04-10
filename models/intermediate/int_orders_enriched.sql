select 
o.order_id,
o.user_id,
o.created_at,
o.status
from {{ref('stg_orders')}} o
