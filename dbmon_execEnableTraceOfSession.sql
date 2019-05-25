EXEC DBMS_SYSTEM.set_sql_trace_in_session(sid=>321, serial#=>1234, sql_trace=>FALSE); 

--- Get the trace file name 
SELECT p.tracefile FROM v$session s JOIN v$process p ON s.paddr = p.addr WHERE s.sid = 321; 

  

