
  
    

  create  table "db_dskola"."public"."datamart_monthly_category_sold__dbt_tmp"
  
  
    as
  
  (
    SELECT
    c."categoryName" AS category_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM(od."quantity") AS total_sold
FROM
    "db_dskola"."public"."orders" o
    JOIN "db_dskola"."public"."order_details" od ON o."orderID" = od."orderID"
    JOIN "db_dskola"."public"."products" p ON od."productID" = p."productID"
    JOIN "db_dskola"."public"."categories" c ON p."categoryID" = c."categoryID"
GROUP BY
    c."categoryName",
    EXTRACT(MONTH FROM o."orderDate")
ORDER BY
    EXTRACT(MONTH FROM o."orderDate"),
    SUM(od."quantity") DESC
  );
  