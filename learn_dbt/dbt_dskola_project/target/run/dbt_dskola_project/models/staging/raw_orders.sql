
  
    

  create  table "db_dskola"."public"."raw_orders__dbt_tmp"
  
  
    as
  
  (
    select
   "customerID"
   
from
    "db_dskola"."public"."orders"
  );
  