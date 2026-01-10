-- Use print() when you always want console visibility

{% macro validate_source_data2(table_name) %}
    {% set row_count = run_query("select count(*) from " ~ table_name).columns[0][0] %}

    {{ print("✓ Validated " ~ table_name ~ ": " ~ row_count ~ " rows") }}

    {% if row_count == 0 %}
        {{ print("⚠ WARNING: " ~ table_name ~ " is empty!") }}
    {% endif %}
{% endmacro %}
