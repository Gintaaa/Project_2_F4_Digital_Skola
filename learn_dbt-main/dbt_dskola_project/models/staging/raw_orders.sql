select
    orderID,
    customerID,
    employeeID,
    orderDate,
    requiredDate
	shippedDate,
    shipVia,
    freight,
    shipName,
    shipAddress,
	shipCity
	shipRegion,
    shipPostalCode,
    shipCountry
from
    {{ source('raw','orders') }}