select
    supplierID,
    companyName,
    contactName,
    contactTitle,
    address,
	city,
    region,
    country,
    phone,
	fax,
    homePage
from
    {{ source('raw','suppliers') }}