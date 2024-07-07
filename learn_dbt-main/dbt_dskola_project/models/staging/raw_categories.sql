select
    categoriesID,
    categoriesName,
    description,
    picture
from
    {{ source('raw','categories') }}