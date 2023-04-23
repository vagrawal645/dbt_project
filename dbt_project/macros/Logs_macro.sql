{% macro Logs_macro(model_name) -%}

insert into demo_db.public.my_dbt_logs (job_type)
values('{{model_name}}')

{%- endmacro %}