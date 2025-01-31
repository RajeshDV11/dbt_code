{{config(materialized='table')}}

select 
* 
from {{source('datafeed_shared_schema','src_supplies_data')}} where No=6