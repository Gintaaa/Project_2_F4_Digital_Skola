
  
    

  create  table "db_dskola"."public"."raw_customers2__dbt_tmp"
  
  
    as
  
  (
    select
    customer_id,
    customer_name
   
from
    "db_dskola"."public"."customers"
  );
  