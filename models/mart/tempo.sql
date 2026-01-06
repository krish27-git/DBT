{{
    config(
        materialized='table',
        temporary=true
    )
}}
select 'abc'as xyz