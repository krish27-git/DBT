-- models/ODS/es.sql

{{
  config(
    materialized='view',
    pre_hook="{{ validate_source_data2('i_emp') }}"
  )
}}

-- Your actual SQL query starts here
select 
    emp_id,
    emp_name,
    department
   from i_emp