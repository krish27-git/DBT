{{
    config(
        materialized='table'
    )
}}

with cte as
(
    select * from {{ ref('emp') }}
    where employeeid<5
)
select * From cte