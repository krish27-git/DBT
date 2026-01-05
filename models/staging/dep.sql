with DEP as 
(
    SELECT departmentid,upper(departmentname) as dname,upper(location) as loc,budget FROM KITTUDB.RAW.DEPARTMENTS


)
SELECT * FROM DEP