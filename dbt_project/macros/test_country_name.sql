{% test country_name(model, column_name) %}

    with validation as (

        select
            {{ column_name }} as country

        from {{ model }}

    ),

    validation_errors as (

        select
            country

        from validation
        -- if this is true, then even_field is actually odd!
        where false
    )

    select *
from validation_errors

{% endtest %}