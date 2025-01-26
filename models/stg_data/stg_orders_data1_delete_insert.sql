{{config(materialized='incremental',
incremental_strtegy='delete+insert',
unique_key='id')}}

select * from {{source('datafeed_shared_schema','src_orders_data1')}}

