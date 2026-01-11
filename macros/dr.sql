-- Use print() when you always want console visibility
{% macro validate_source_data2(table_name) %}
    {% if execute %}
        {% set row_count = run_query("select count(*) from " ~ table_name).columns[0][0] %}
        
        
        
        {% if row_count == 0 %}
            {# Option 1: Raise an ERROR - stops execution #}
            {{ exceptions.raise_compiler_error("FATAL: " ~ table_name ~ " is empty! Cannot proceed.") }}
            
            {# Option 2: Raise a WARNING - continues execution #}
            {# {% do exceptions.warn("WARNING: " ~ table_name ~ " is empty!") %} #}
        {% endif %}
    {% endif %}
{% endmacro %}