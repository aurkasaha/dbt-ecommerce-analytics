select
user_id,
recency,
frequency,
monetary_value,
--recency score - 1 (most recent) to 5 (least recent)
case
when recency <= 5 then 5
when recency <= 15 then 4
when recency <= 30 then 3
when recency <= 60 then 2
else 1
end as recency_score,
--frequency score - 1 (least frequent) to 5 (most frequent)
case
when frequency >= 10 then 5
when frequency >= 5 then 4
when frequency >= 3 then 3
when frequency = 2 then 2
else 1
end as frequency_score,
--monetary score - 1 (lowest spenders) to 5 (highest spenders)
case
when monetary_value >= 500 then 5
when monetary_value >= 200 then 4
when monetary_value >= 100 then 3
when monetary_value >= 50 then 2
else 1
end as monetary_score
from {{ref('rfm_users')}}
