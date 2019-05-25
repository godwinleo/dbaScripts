--- SYNTAX FOR REMOVING DB SERVICE:  
---srvctl remove database -d db_unique_name [-f] [-y] [-v] 
e.g: 
srvctl remove database -d PRODB -f -y 
--- SYNTAX FOR ADDING DB SERVICE : 
-- srvctl add database -d db_unique_name -o ORACLE_HOME  [-p spfile] 
e.g: 
srvctl add database -d PRODB -o /u01/app/oracle/product/12.1.0.2/dbhome_1 -p +DATA/PRODDB/parameterfile/spfilePRODB.ora
