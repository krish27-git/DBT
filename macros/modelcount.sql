-- Macro definition
{% macro my_incremental_logic() %}
    
    {%- set unique_key = config.require('unique_key') -%}
    
    {% if unique_key %}
        -- User provided unique_key
        'yes'
    {% else %}
        -- No unique_key provided
       'no'
    {% endif %}
    
{% endmacro %}