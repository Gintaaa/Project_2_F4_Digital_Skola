select
    customerID,
    companyName,
    contactName,
    contactTitle,
	address,
    city,
    region,
    postalCode,
	country,
	phone,
    fax
from
    {{ source('raw','customers') }}