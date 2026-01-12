{% set results = run_query('select * from kittudb.raw.employee limit 1') %}

{% if execute %}
  {# Get all column names as a list #}
  {% set column_names = results.column_names %}
  
  {{ log("Columns: " ~ column_names|join(', '), info=true) }}
  {# Output: Columns: EMP_ID, EMP_NAME, DEPARTMENT, SALARY, STATUS, HIRED_DATE, UPDATED_DATE #}
{% endif %}

