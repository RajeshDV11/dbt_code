{{config(materialized='view')}}

select id,
user_id,
order_date,
from {{source('datafeed_shared_schema','src_orders_data1')}}