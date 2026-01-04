{% set pnames= ['laptop', 'mobile phone', 'tablet', 'headphones'] %}
{% set comma = joiner(", ") %}
select * from table where id in ( 
{%- for item in pnames -%}
{{ comma() }}'{{ item | upper }}'
{%- endfor -%}
 )