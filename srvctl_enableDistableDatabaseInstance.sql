-- ENABLE - Reenables management by Oracle Restart for a component. 
-- DISABLE - Disables management by Oracle Restart for a component. 

srvctl enable instance -d DB_UNIQUE_NAME-i INSTANCE_NAME 
srvctl disable instance -d DB_UNIQUE_NAME-i INSTANCE_NAME 
srvctl enable database -d DB_UNIQUE_NAME 
srvctl disable database -d DB_UNIQUE_NAME
