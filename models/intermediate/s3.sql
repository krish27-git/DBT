{% set row_count = run_query("select count(*) from i_dep").columns[0][0] %}
{{ log("Source table has " ~ row_count ~ " rows", info=True) }}