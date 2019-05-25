select sql_id,child_number,plan_hash_value from gv$sql where sql_id='&sqlid';

prompt Now get the explain plan for cursor:

SELECT * from TABLE(DBMS_XPLAN.DISPLAY_CURSOR('&sqlid',&child_number));

