{{
    config(
        materialized='incremental',
        incremental_strategy='append'
    )
}}

select EMP_ID, EMP_NAME, DEPARTMENT, SALARY, STATUS, HIRED_DATE, UPDATED_AT,current_timestamp() as currtimestamp
from KITTUDB.RAW.EMPLOYEE 

{% if is_incremental() %}
where UPDATED_AT > (select coalesce(max(UPDATED_AT),'1900-01-01') from {{ this }} )
{% endif %}
