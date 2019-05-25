prompt Objects causing latch contention
prompt Objects causing latch contentionClose

col OBJECT_NAME for a30 
col owner for a12 
with bh_lc as 
(select 
lc.addr, lc.child#, lc.gets, lc.misses, lc.immediate_gets, lc.immediate_misses, 
lc.spin_gets, lc.sleeps, 
bh.hladdr, bh.tch tch, bh.file#, bh.dbablk, bh.class, bh.state, bh.obj 
from 
v$session_wait sw, 
v$latchname ld, 
v$latch_children lc, 
x$bh bh 
where lc.addr =sw.p1raw 
and sw.p2= ld.latch# 
and ld.name='cache buffers chains' 
and lower(sw.event) like '%latch%' 
and bh.hladdr=lc.addr 
) 
select bh_lc.hladdr, bh_lc.tch, o.owner, o.object_name, o.object_type, 
bh_lc.child#, 
bh_lc.gets, bh_lc.misses, bh_lc.immediate_gets, 
bh_lc.immediate_misses, spin_gets, sleeps 
from 
bh_lc, dba_objects o 
where bh_lc.obj = o.data_object_id(+) 
order by 1,2 desc;
