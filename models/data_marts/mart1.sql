with d
as (
select date_trunc('week', s.order_date)::date order_week, s.status, h.order_key 	
from   {{ ref('hub_order') }} h join {{ ref('sat_order_details') }} s using(order_pk)
)
select order_week, status, count(*)
from d
group by order_week, status
order by 1,2