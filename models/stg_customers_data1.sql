{{config(materialized='table')}}

with tab1 as (
select id as customer_id,
first_name,
last_name
from  {{source('datafeed_shared_schema','src_customers_data1')}}   
)
select * from tab1