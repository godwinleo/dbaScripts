set lines 2000 
SELECT SID, b.NAME, ROUND(a.VALUE/(1024*1024),2) MB FROM 
gv$sesstat a, gv$statname b 
WHERE (NAME LIKE '%session uga memory%' OR NAME LIKE '%session pga memory%') 
AND a.statistic# = b.statistic# order by ROUND(a.VALUE/(1024*1024),2) desc
