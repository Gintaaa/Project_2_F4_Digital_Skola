select
    employeeID,
    territoryID
    order_amount
from
    {{ source('raw','employee_territories') }}