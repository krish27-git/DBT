{{ config(
    schema='{{ env_var("DBT_SCH", "default_analytics") }}'
) }}
SELECT CURRENT_DATABASE() as cdb,CURRENT_SCHEMA() as csm,'{{env_var('DBT_SCH') | lower}}' as X