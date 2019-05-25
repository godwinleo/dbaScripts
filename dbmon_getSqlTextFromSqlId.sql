col sql_text form a80 
set lines 120 
select sql_text from gv$sqltext where hash_value=(select sql_hash_value from gv$session where sid=&sid and inst_id=&inst_id)
order by piece 
/
