select
    order_date,
    count(order_id) as order_count,
    sum(amount) as total_amount
from {{ ref('orders') }}
group by 1
