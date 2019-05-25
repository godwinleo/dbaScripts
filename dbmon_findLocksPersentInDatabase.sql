col session_id head 'Sid' form 9999 
col object_name head "Table|Locked" form a30 
col oracle_username head "Oracle|Username" form a10 truncate 
col os_user_name head "OS|Username" form a10 truncate 
col process head "Client|Process|ID" form 99999999 
col mode_held form a15 
select lo.session_id,lo.oracle_username,lo.os_user_name, 
lo.process,do.object_name, 
decode(lo.locked_mode,0, 'None',1, 'Null',2, 'Row Share (SS)', 
3, 'Row Excl (SX)',4, 'Share',5, 'Share Row Excl (SSX)',6, 'Exclusive', 
to_char(lo.locked_mode)) mode_held 
from gv$locked_object lo, dba_objects do 
where lo.object_id = do.object_id 
order by 1,5 
/


COLUMN owner FORMAT A20
COLUMN username FORMAT A20
COLUMN object_owner FORMAT A20
COLUMN object_name FORMAT A30
COLUMN locked_mode FORMAT A15

SELECT b.inst_id,
b.session_id AS sid,
NVL(b.oracle_username, '(oracle)') AS username,
a.owner AS object_owner,
a.object_name,
Decode(b.locked_mode, 0, 'None',
1, 'Null (NULL)',
2, 'Row-S (SS)',
3, 'Row-X (SX)',
4, 'Share (S)',
5, 'S/Row-X (SSX)',
6, 'Exclusive (X)',
b.locked_mode) locked_mode,
b.os_user_name
FROM dba_objects a,
gv$locked_object b
WHERE a.object_id = b.object_id
ORDER BY 1, 2, 3, 4;
/

SET PAGESIZE 14
SET VERIFY ON
