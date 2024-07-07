SELECT
    o."orderID",
    CAST(o."orderDate" AS date),
    o."customerID",
    c."companyName" AS "customerName",
    o."employeeID",
    CONCAT(e."firstName", ' ', e."lastName") AS "employeeName",
    od."productID",
    p."productName",
    od."unitPrice",
    od."quantity",
    od."discount",
    p."categoryID",
    cat."categoryName",
    t."territoryID",
    t."territoryDescription",
    r."regionID",
    r."regionDescription",
    p."supplierID",
    s."companyName" AS "supplierName",
    sh."shipperID",
    sh."companyName" AS "shipperName",
    o."shipVia",
    o."freight",
    o."shipName",
    o."shipAddress",
    o."shipCity",
    o."shipRegion",
    o."shipPostalCode",
    o."shipCountry"
FROM
    "db_dskola"."public"."orders" o
JOIN
    "db_dskola"."public"."customers" c ON o."customerID" = c."customerID"
JOIN
   "db_dskola"."public"."employees" e ON o."employeeID" = e."employeeID"
JOIN
    "db_dskola"."public"."order_details" od ON o."orderID" = od."orderID"
JOIN
    "db_dskola"."public"."products" p ON od."productID" = p."productID"
JOIN
    "db_dskola"."public"."categories" cat ON p."categoryID" = cat."categoryID"
JOIN
    "db_dskola"."public"."employee_territories" et ON e."employeeID" = et."employeeID"
JOIN
    "db_dskola"."public"."territories" t ON et."territoryID" = t."territoryID"
JOIN
    "db_dskola"."public"."regions" r ON t."regionID" = r."regionID"
JOIN
    "db_dskola"."public"."suppliers" s ON p."supplierID" = s."supplierID"
JOIN
    "db_dskola"."public"."shippers" sh ON o."shipVia" = sh."shipperID"