{{
    config(
        materialized='view'
    )
}}

-- Get current/active snapshot records only
SELECT 
    emp_id,
    emp_name,
    department,
    salary,
    status,
    hired_date,
    updated_at,
    city,
    dbt_valid_from,
    dbt_valid_to
FROM {{ ref('employee_snapshot') }}
WHERE dbt_valid_to IS NULL  -- Current records only
