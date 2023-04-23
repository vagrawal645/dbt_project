select * 
, iff(country_name = '{{var("my_country")}}',true,false) as is_my_country
from {{ref('xyz')}}