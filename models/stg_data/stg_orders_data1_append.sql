{{config(materialized='incremental',
strategy='append')}}
slect * from {{source('datafeed_shared_schema','src_orders_data1')}}
