{{config(materialized='incremental',
strategy='append')}}
select * from {{source('datafeed_shared_schema','src_orders_data1')}}
