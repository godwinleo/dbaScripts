SELECT schema, sql_text, disk_reads, round(cpu,2) FROM 
(SELECT s.parsing_schema_name schema, t.sql_id, t.sql_text, t.disk_reads, 
t.sorts, t.cpu_time/1000000 cpu, t.rows_processed, t.elapsed_time 
FROM gv$sqlstats t join gv$sql s on(t.sql_id = s.sql_id) 
WHERE parsing_schema_name = 'SCOTT' 
ORDER BY disk_reads DESC) 
WHERE rownum <= 5;
