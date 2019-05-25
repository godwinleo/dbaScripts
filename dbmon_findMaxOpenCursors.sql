prompt Current open cursor 

select a.value, s.username, s.sid, s.serial# 
from gv$sesstat a, gv$statname b, gv$session s 
where a.statistic# = b.statistic# and s.sid=a.sid 
and b.name = 'opened cursors current'; 

prompt Max allowed open cursor and total open cursor 

select max(a.value) as highest_open_cur, p.value as max_open_cur 
from gv$sesstat a,gv$statname b, gv$parameter p 
where a.statistic# = b.statistic# and b.name = 'opened cursors current' 
and p.name= 'open_cursors' 
group by p.value;
