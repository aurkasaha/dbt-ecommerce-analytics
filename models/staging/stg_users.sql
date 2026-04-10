select
    id as user_id,
    country
from {{ source('thelook_ecommerce', 'users') }}