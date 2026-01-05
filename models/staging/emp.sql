{{
    config(
        materialized='table'
    )
}}
with cte as
(
    select * from kittudb.raw.employees
    where employeeid <11
 
)
select * from cte