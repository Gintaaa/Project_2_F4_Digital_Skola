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
    {{ source('raw','orders') }} o
JOIN
    {{ source('raw','customers') }} c ON o."customerID" = c."customerID"
JOIN
   {{ source('raw','employees') }} e ON o."employeeID" = e."employeeID"
JOIN
    {{ source('raw','order_details') }} od ON o."orderID" = od."orderID"
JOIN
    {{ source('raw','products') }} p ON od."productID" = p."productID"
JOIN
    {{ source('raw','categories') }} cat ON p."categoryID" = cat."categoryID"
JOIN
    {{ source('raw','employee_territories') }} et ON e."employeeID" = et."employeeID"
JOIN
    {{ source('raw','territories') }} t ON et."territoryID" = t."territoryID"
JOIN
    {{ source('raw','regions') }} r ON t."regionID" = r."regionID"
JOIN
    {{ source('raw','suppliers') }} s ON p."supplierID" = s."supplierID"
JOIN
    {{ source('raw','shippers') }} sh ON o."shipVia" = sh."shipperID"
