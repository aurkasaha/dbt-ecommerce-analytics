

select 
order_id,
user_id,
created_at,
total_order_value


from {{ref('int_order_items_with_price')}} 
