{% macro default_compare_row_counts(a_relation,b_relation,c_relation) %}

 select 
 '{{a_relation}}' as Table_Name,
 count(*) as total_rows
 from{{a_relation}}
 union all
 select 
'{{b_relation}}' as Table_Name,
 count(*) as total_rows
 from{{b_relation}}
 union all
 select
 '{{c_relation}}' as Table_Name,
 count(*) as total_rows
 from{{c_relation}}
 {% endmacro %}