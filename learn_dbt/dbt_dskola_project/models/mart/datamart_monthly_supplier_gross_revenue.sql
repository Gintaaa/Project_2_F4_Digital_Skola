SELECT
    s."companyName" AS supplier_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM((od."unitPrice" - (od."unitPrice" * od."discount")) * od."quantity") AS gross_revenue
FROM
    {{ source('raw','orders') }} o
JOIN {{ source('raw','order_details') }} od ON o."orderID" = od."orderID"
JOIN {{ source('raw','products') }} p ON od."productID" = p."productID"
JOIN {{ source('raw','suppliers') }} s ON p."supplierID" = s."supplierID"
GROUP BY
    s."companyName",
    EXTRACT(MONTH FROM o."orderDate")
