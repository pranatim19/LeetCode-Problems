with tmp as (
    select 
        *,
        datediff(lead(event_date) over(partition by player_id order by event_date), event_date) = 1 as checker,
        first_value(event_date) over(partition by player_id order by event_date) as checker2
    from Activity
)
select 
    round(count(distinct player_id) / (select count(distinct player_id) from Activity), 2) as fraction
from tmp
where checker = 1 and checker2 = event_date