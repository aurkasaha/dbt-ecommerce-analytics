select
user_id,
-- recency - days since last order
date_diff(current_date(), date(max(created_at)), day) as recency,
-- frequency - number of orders
count(order_id) as frequency,
-- monetary value - total order value
sum(total_order_value) as monetary_value
from {{ref('int_order_items_with_price')}}
group by 1
