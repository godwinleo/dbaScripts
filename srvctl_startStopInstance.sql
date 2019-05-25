--SYNTAX FOR STOPPING INSTANCE 
-- srvctl stop instance -d db_unique_name [-i "instance_name_list"]} [-o stop_options] [-f] 
e.g 
srvctl stop instance -d PRODB  -i PRODB1  

--SYNTAX FOR STARTING INSTANCE 
-- srvctl start instance -d db_unique_name  [-i "instance_name_list"} [-o start_options] 
e.g 
srvctl start instance -d PRODB -i PRO
