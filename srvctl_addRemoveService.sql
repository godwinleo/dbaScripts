ADDING A SERVICE: 
------------------------------------------- 

SYNTAX: 
------------ 
srvctl add servicec -d {DB_NAME} -s {SERVICE_NAME} -r {"preferred_list"} -a {"available_list"} [-P {BASIC | NONE | PRECONNECT}] 

EXAMPLE: 
--------------- 
srvctl add service -d PREDB -s PRDB_SRV -r "PREDB1,PREDB2" -a "PREDB2" -P BASIC 

REMOVING A SERVICE: 
------------------------------------------ 

SYNTAX: 
------------- 
srvctl remove service -d {DB_NAME} -s {SERVICE_NAME} 

EXAMPLE: 
-------- 
srvctl remove service -d PREDB -s PRDB_SRV
