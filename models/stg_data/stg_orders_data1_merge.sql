{{config(materialized='incremental',
incremental_strategy='merge',
unique_key='id')}}

select * from {{source('datafeed_shared_schema','src_orders_data1')}}