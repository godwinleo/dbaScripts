SYNTAX - 

srvctl relocate service -d  {database_name}  -s  {service_name}  -i  {old_inst_name}  -r  {new_inst_name} 

EXAMPLE:(Relocating service PRDB_SRV from PREDB2 to PREDB1) 

srvctl relocate service -d PREDB -s PRDB_SVC -i PREDB2 -t PREDB1 

-- Check the status of service 

srvctl status service -d PREDB -s PRDB_SVC
