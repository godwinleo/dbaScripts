select module,parsing_schema_name,inst_id,sql_id,plan_hash_value,child_number,sql_fulltext, 
to_char(last_active_time,'DD/MM/YY HH24:MI:SS' ),sql_plan_baseline,executions, 
elapsed_time/executions/1000/1000,rows_processed from gv$sql 
where sql_id in ('&sql_id');
