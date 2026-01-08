{{
    config(
        materialized='incremental',
        incremental_strategy='merge',
        unique_key='EMP_ID'
        
        
         )
}}

select 
  EMP_ID,
  EMP_NAME, 
  DEPARTMENT, 
  CASE 
        WHEN DEPARTMENT = 'IT' THEN salary * 1.10 
        ELSE salary 
    END as salary, 
  STATUS, 
  HIRED_DATE, 
  UPDATED_AT,
  current_timestamp() as currtimestamp
from KITTUDB.RAW.EMPLOYEE 

{% if is_incremental() %}
where UPDATED_AT > (select coalesce(max(UPDATED_AT),'1900-01-01') from {{ this }} )
{% endif %}