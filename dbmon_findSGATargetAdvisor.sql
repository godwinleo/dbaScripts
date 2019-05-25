- STATISTICS_LEVEL should be TYPICAL/ALL. 

SQL> show parameter statistics_level 

NAME TYPE VALUE 
------------------------------------ -------------------------------- -------------------------- 
statistics_level string TYPICAL 

select * from v$sga_target_advice order by sga_size; 

  
