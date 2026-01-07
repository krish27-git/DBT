{{
    config(
        materialized='incremental',
        incrementalncremental_strategy='append'

    )
}}

with cte as
(
    select * from KITTUDB.RAW.EMPLOYEE
{% if is_incremental() %}
  where UPDATED_AT >= (select coalesce(max(UPDATED_AT), '1900-01-01') from {{ this }})
{% endif %}
)
select * from cte

