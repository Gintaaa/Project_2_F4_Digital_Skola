SELECT
    e."firstName" || ' ' || e."lastName" AS employee_name,
    EXTRACT(MONTH FROM o."orderDate") AS month,
    SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) AS total_gross_revenue
FROM
   {{ source('raw','orders') }} o
JOIN {{ source('raw','order_details') }} od ON o."orderID" = od."orderID"
JOIN {{ source('raw','employees') }} e ON o."employeeID" = e."employeeID"
GROUP BY
    e."firstName",
    e."lastName",
    EXTRACT(MONTH FROM o."orderDate")
ORDER BY
    EXTRACT(MONTH FROM o."orderDate"),
    SUM((od."unitPrice" - (od."unitPrice" * od.discount)) * od.quantity) DESC