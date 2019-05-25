-- SYNTAX FOR STOP DB 
--- srvctl stop database -d db_name [-o stop_options] where stop_options is normal/immediate(default)/transactional/abort 
e.g 
srvctl stop database -d PRODB -o normal 
srvctl stop database -d PRODB -o immediate 
srvctl stop database -d PRODB -o transactional 
srvctl stop database -d PRODB -o abort 

-- SYNTAX FOR START DB 
-- srvctl start database -d db_name [-o start_options] where start_option is nomount/mount/open(default) 

e.g  
srvctl start database -d PRODB -o nomount 
srvctl start database -d PRODB -o mount 
srvctl start database -d PRODB -o open
