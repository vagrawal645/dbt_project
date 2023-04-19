with orders as (
    select * from {{ source('SNOWFLAKE_SAMPLE_DATA','ORDERS') }}
)
, customers as (
    select * from {{ source('SNOWFLAKE_SAMPLE_DATA','CUSTOMER') }}
)
, final as (
    select * from 
    orders as o 
    inner join customers as c
    on o.O_CUSTKEY = c.C_CUSTKEY
)

select * from final