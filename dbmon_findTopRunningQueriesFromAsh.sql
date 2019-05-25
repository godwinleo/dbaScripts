--Query to get list of top running sqls in PAST between sysdate-1 to sysdate-23/34 . You can change accordingly 

SELECT active_session_history.user_id, 
dba_users.username, 
sqlarea.sql_text, 
SUM(active_session_history.wait_time + 
active_session_history.time_waited)/1000000 ttl_wait_time_in_seconds 
FROM gv$active_session_history active_session_history, 
gv$sqlarea sqlarea, 
dba_users 
WHERE active_session_history.sample_time BETWEEN SYSDATE - 1 AND SYSDATE-23/24 
AND active_session_history.sql_id = sqlarea.sql_id 
AND active_session_history.user_id = dba_users.user_id 
and dba_users.username not in ('SYS','DBSNMP') 
GROUP BY active_session_history.user_id,sqlarea.sql_text, dba_users.username 
ORDER BY 4 DESC 
/
