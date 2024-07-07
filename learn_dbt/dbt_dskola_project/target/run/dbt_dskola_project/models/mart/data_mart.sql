
  
    

  create  table "db_dskola"."public"."data_mart__dbt_tmp"
  
  
    as
  
  (
    -- -- Datamart untuk gross revenue supplier tiap bulan
-- CREATE TABLE datamart_monthly_supplier_gross_revenue AS
-- SELECT
--     s."companyName" AS supplier_name,
--     EXTRACT(MONTH FROM o."orderDate") AS month,
--     SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) AS gross_revenue
-- FROM
--     public.orders o
--     JOIN public.order_details od ON o."orderID" = od."orderID"
--     JOIN public.products p ON od."productID" = p."productID"
--     JOIN public.suppliers s ON p."supplierID" = s."supplierID"
-- GROUP BY
--     s."companyName",
--     EXTRACT(MONTH FROM o."orderDate");

-- -- Datamart untuk kategori produk paling banyak terjual tiap bulan
-- CREATE TABLE datamart_monthly_category_sold AS
-- SELECT
--     c."categoryName" AS category_name,
--     EXTRACT(MONTH FROM o."orderDate") AS month,
--     SUM(od.quantity) AS total_sold
-- FROM
--     public.orders o
--     JOIN public.order_details od ON o."orderID" = od."orderID"
--     JOIN public.products p ON od."productID" = p."productID"
--     JOIN public.categories c ON p."categoryID" = c."categoryID"
-- GROUP BY
--     c."categoryName",
--     EXTRACT(MONTH FROM o."orderDate")
-- ORDER BY
--     EXTRACT(MONTH FROM o."orderDate"),
--     SUM(od.quantity) DESC;

-- -- Datamart untuk best employee berdasarkan total gross revenue yang dihasilkan dalam satu bulan
-- CREATE TABLE datamart_monthly_best_employee AS
-- SELECT
--     e."firstName" || ' ' || e."lastName" AS employee_name,
--     EXTRACT(MONTH FROM o."orderDate") AS month,
--     SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) AS total_gross_revenue
-- FROM
--     public.orders o
--     JOIN public.order_details od ON o."orderID" = od."orderID"
--     JOIN public.employees e ON o."employeeID" = e."employeeID"
-- GROUP BY
--     e."firstName",
--     e."lastName",
--     EXTRACT(MONTH FROM o."orderDate")
-- ORDER BY
--     EXTRACT(MONTH FROM o."orderDate"),
--     SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) DESC;
  );
  