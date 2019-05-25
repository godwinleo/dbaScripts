BEGIN 
FOR r IN (select sid,serial# from v$session where username = '&username') 
LOOP 
EXECUTE IMMEDIATE 'alter system kill session ''' || r.sid || ',' || r.serial# || ''' immediate'; 
END LOOP; 
END; 
/
