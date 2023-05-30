select
customerid,
segment,
country,
sum(orderprofi) as profit
from {{ ref('stg_orders') }}
group by
customerid,
segment,
country