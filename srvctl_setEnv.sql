-- setenv to set env variables.(ORCL is the db_unique_name) 

srvctl setenv database -db ORCL -env "ORACLE_HOME=/oracle/app/oracle/product/12.1.0.2/dbhome_1" 
srvctl setenv database -db ORCL -env "TNS_ADMIN=/oracle/app/oracle/product/12.1.0.2/dbhome_1/network/admin" 

--getenv to view the env setting: 

srvctl getenv database -db ORCL
