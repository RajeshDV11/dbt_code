select employee_id
from {{ref('stg_employee_functions')}}
where salary<1