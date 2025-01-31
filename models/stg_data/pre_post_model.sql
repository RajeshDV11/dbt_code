{{config( materialized="table",
post_hook="TRUNCATE TABLE {{ref('stg_supplies_data')}}"
)}}

WITH tb1 as(
select 
*
from {{ref('stg_supplies_data')}})
select * from tb1



