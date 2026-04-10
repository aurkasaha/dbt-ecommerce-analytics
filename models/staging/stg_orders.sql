select 
order_id,
user_id, 
created_at,
status
from {{source('thelook_ecommerce','orders')}}
where order_id is not null