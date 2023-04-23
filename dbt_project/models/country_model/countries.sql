{{ config(
    pre_hook = "{{Logs_macro('Countries_model_start')}}" 
    ,post_hook = "{{Logs_macro('Countries_model_end')}}" 
) }}


select * 
, iff(country_name = '{{var("my_country")}}',true,false) as is_my_country
from {{ref('xyz')}}