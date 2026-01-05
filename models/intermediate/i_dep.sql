with cte as (select * from {{ ref("dep") }} where loc != 'PUNE') select * from cte
