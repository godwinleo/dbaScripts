select 'alter system kill session '''||sid||','||serial#||''' immediate;' from gv$session where status='SNIPED' ;
