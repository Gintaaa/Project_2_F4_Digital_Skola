
  
    

  create  table "db_dskola"."public"."raw_cutomers2__dbt_tmp"
  
  
    as
  
  (
    select
    customer_id,
    customer_name,
    customer_email,
    signup_date
from
    "db_dskola"."public"."customers"
  );
  