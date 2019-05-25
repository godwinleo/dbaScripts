set lines 299 
column object format a30 
column owner format a10 
select * from gv$access where owner='&OWNER' andobject='&object_name' and 
/
