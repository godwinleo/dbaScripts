-- SYNTAX FOR REMOVING INSTANCE 
---srvctl remove instance -d DB_UNIQUE_NAME -i INSTANCE_NAME 
e.g 
srvctl remove instance -d PRODB - I PRODB1 

-- SYNTAX FOR ADDING INSTANCE  
--- srvctl add instance –d db_unique_name –i inst_name -n node_name 
e.g 
Close
srvctl add instance -d PRODB - i PRODB1 -n rachost1
