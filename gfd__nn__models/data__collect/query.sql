SELECT 
        id, 
        gvkey, 
        age,
        eom, 
        excntry, 
        permno, 
        size_grp, 
        me, 
        ret_exc_lead1m,
        col_gr1a

FROM contrib.global_factor

WHERE   common = 1 
   AND  exch_main = 1 
   AND  primary_sec = 1 
   AND  obs_main = 1 
   AND  excntry = 'DNK'