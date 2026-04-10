

select *,

case
    -- VIP (top customers)
    when recency_score >= 4 and frequency_score >= 4 and monetary_score >= 4 
        then 'VIP Customers'

    -- Loyal (frequent but maybe not highest spend)
    when recency_score >= 4 and frequency_score >= 3 
        then 'Loyal Customers'

    -- New / Potential (recent but low frequency)
    when recency_score >= 4 and frequency_score <= 2 
        then 'New Customers'

    -- At Risk (not recent)
    when recency_score <= 2 and frequency_score >= 3 
        then 'At Risk'

    -- Lost
    when recency_score <= 2 and frequency_score <= 2 
        then 'Lost Customers'

    else 'Regular Customers'

end as rfm_segment
from {{ref('rfm_scored')}}