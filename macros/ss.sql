{% macro greet(name) %}
    Hello, {{ name }}!
{% endmacro %}

{% macro create_table(schema, table_name, columns) %}
    CREATE TABLE {{ schema }}.{{ table_name }} (
        {{ columns }}
    );
{% endmacro %}

{% macro generate_alias(table_name, env='dev') %}
    {{ env }}_{{ table_name }}
{% endmacro %}

{% macro build_where_clause(filters) %}
    WHERE 1=1
    {% if filters.date_from %}
        AND date >= '{{ filters.date_from }}'
    {% endif %}
    {% if filters.status %}
        AND status = '{{ filters.status }}'
    {% endif %}
{% endmacro %}

{% macro create_columns(column_list) %}
    {% for col in column_list %}
        {{ col.name }} {{ col.type }}{% if not loop.last %},{% endif %}
    {% endfor %}
{% endmacro %}

{% macro get_env_prefix() %}
    {% if target.name == 'prod' %}
        {{ return('prd_') }}
    {% else %}
        {{ return('dev_') }}
    {% endif %}
{% endmacro %}