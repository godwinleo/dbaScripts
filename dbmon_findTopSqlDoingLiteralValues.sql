select * from ( 
select plan_hash_value, count(distinct(hash_value)), sum(executions), 
sum(parse_calls) 
from gv$sql 
group by plan_hash_value 
having count(distinct(hash_value)) > 10 
order by 2 desc 
) where rownum<21; 
