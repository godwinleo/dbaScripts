select 
length(addr)*4 || '-bits' word_length 
from 
gv$process 
where 
ROWNUM =1;
