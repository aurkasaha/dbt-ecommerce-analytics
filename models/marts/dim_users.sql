select
    user_id,
    country
from {{ ref('stg_users') }}