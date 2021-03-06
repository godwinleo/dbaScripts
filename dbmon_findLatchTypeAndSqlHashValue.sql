Set lines 160 pages 100 
Column event format A35 
Column name format A35 
select x.event, x.sql_hash_value, 
case when x.event like 'latch%' then 
l.name 
else ' ' 
end name, 
x.cnt from ( 
select substr(w.event, 1, 28) event, s.sql_hash_value, w.p2,count(*) cnt 
from v$session_wait w, v$session s, v$process p 
where s.sid=w.sid 
and p.addr = s.paddr 
and s.username is not null 
and w.event not like '%pipe%' 
and w.event not like 'SQL*%' 
group by substr(w.event, 1, 28), sql_hash_value,w.p2 
) x, 
v$latch l 
where 
x.p2 = l.latch#(+) 
order by cnt;
