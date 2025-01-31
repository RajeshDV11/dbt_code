{{config(materialized='table')}}
select 
* 
from {{ref('stg_emp_source')}}