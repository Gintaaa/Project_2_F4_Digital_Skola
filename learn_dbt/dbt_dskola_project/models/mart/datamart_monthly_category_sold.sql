
SELECT
    c."categoryName" AS category_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM(od."quantity") AS total_sold
FROM
    {{ source('raw','orders') }} o
    JOIN {{ source('raw','order_details') }} od ON o."orderID" = od."orderID"
    JOIN {{ source('raw','products') }} p ON od."productID" = p."productID"
    JOIN {{ source('raw','categories') }} c ON p."categoryID" = c."categoryID"
GROUP BY
    c."categoryName",
    EXTRACT(MONTH FROM o."orderDate")
ORDER BY
    EXTRACT(MONTH FROM o."orderDate"),
    SUM(od."quantity") DESC
