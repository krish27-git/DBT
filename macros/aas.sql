{% macro process_data(table_name, date_filter) %}
    {{ log("Processing table: " ~ table_name ~ " for date: " ~ date_filter, info=True) }}
    
    select * from {{ table_name }}
    where HIREDATE >= '{{ date_filter }}'
{% endmacro %}