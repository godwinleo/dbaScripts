select sql_id,object_owner,object_name from gV$SQL_PLAN where 
operation='TABLE ACCESS' and 
options='FULL' and 
object_owner not in ('SYS','SYSTEM','DBSNMP');
