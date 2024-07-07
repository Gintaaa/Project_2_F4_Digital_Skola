SELECT
    s."companyName" AS supplier_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM((od."unitPrice" - (od."unitPrice" * od."discount")) * od."quantity") AS gross_revenue
FROM
    "db_dskola"."public"."orders" o
JOIN "db_dskola"."public"."order_details" od ON o."orderID" = od."orderID"
JOIN "db_dskola"."public"."products" p ON od."productID" = p."productID"
JOIN "db_dskola"."public"."suppliers" s ON p."supplierID" = s."supplierID"
GROUP BY
    s."companyName",
    EXTRACT(MONTH FROM o."orderDate")