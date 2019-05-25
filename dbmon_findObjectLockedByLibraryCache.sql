select to_char(SESSION_ID,'999') sid , 
substr(LOCK_TYPE,1,30) Type, 
substr(lock_id1,1,23) Object_Name, 
substr(mode_held,1,4) HELD, substr(mode_requested,1,4) REQ, 
lock_id2 Lock_addr 
from dba_lock_internal 
where 
mode_requested'None' 
and mode_requestedmode_held 
and session_id in ( select sid 
from v$session_wait where wait_time=0 
and event like '%library cache%') ;
