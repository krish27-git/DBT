-- This is the base template

{% block select_columns %}
    -- Default columns
   EMP_ID,
   EMP_NAME
{% endblock %}

FROM KITTUDB.RAW.EMPLOYEE

{% block where_clause %}
    -- Default filter
    WHERE STATUS = 'ACTIVE'
{% endblock %}

