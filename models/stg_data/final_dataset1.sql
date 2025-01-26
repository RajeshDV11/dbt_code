with customers as 
(
select customer_id,
first_name,
last_name
from {{ref("stg_customers_data1")}}
),
orders as (
select id as order_id,
user_id as customer_id,
order_date,
status
from {{source('datafeed_shared_schema','src_orders_data1')}}
),
customers_orders as(
select 
customer_id,
min(order_date) as first_order_date,
max(order_date) as most_recent_order_date,
count(order_id) as number_of_orders
from orders
group by customer_id
),
final as(
select 
customers.customer_id,
customers.first_name,
customers.last_name,
customers_orders.first_order_date,
customers_orders.most_recent_order_date,
coalesce(customers_orders.number_of_orders,0) as number_of_orders from 
customers left join customers_orders on customers.customer_id=customers_orders.customer_id
)
select * from final