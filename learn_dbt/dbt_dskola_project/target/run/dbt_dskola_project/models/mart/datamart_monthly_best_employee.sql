
  
    

  create  table "db_dskola"."public"."datamart_monthly_best_employee__dbt_tmp"
  
  
    as
  
  (
    SELECT
    e."firstName" || ' ' || e."lastName" AS employee_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) AS total_gross_revenue
FROM
   "db_dskola"."public"."orders" o
JOIN "db_dskola"."public"."order_details" od ON o."orderID" = od."orderID"
JOIN "db_dskola"."public"."employees" e ON o."employeeID" = e."employeeID"
GROUP BY
    e."firstName",
    e."lastName",
    EXTRACT(MONTH FROM o."orderDate")
ORDER BY
    EXTRACT(MONTH FROM o."orderDate"),
    SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) DESC
  );
  