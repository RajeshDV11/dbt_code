{% macro default_compare_row_counts(a_name,b_name,c_name) -%}

select 
'{{a_name}}' as Table_Name,
 count(*) as total_rows
 from{{a_name}}
 union all
 select 
'{{b_name}}' as Table_Name,
 count(*) as total_rows
 from{{b_name}}
 union all
 select
 '{{c_name}}' as Table_Name,
 count(*) as total_rows
 from{{c_name}}
 {%- endmacro %}