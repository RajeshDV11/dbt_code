{{config(materialized='table')}}

select id,
name,
salary as Old_Sal,
({{calculate_amount('salary',1000)}}) as New_Sal
from
{{source('datafeed_shared_schema','employees_raw')}}
