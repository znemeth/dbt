with source_data as (
select *
from {{ source('source', 'country') }}

),

cte as (
select *
from source_data

union

select 4 as id, 'Slovenia' as country
)

select *
from cte
order by id
