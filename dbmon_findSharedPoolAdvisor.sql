SELECT shared_pool_size_for_estimate "Size of Shared Pool in MB", 
shared_pool_size_factor "Size Factor", 
estd_lc_time_saved "Time Saved in sec" FROM v$shared_pool_advice;
