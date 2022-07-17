{{ config(
    materialized = 'table',
    full_refresh = true
) }}

{%- set datepart = "day" -%}
{%- set start_date = "TO_TIMESTAMP('2022/07/16 23:59:59', 'yyyy/mm/dd HH24:MI:SS')" -%}
{%- set end_date = "TO_TIMESTAMP('2022/07/18 23:59:59', 'yyyy/mm/dd HH24:MI:SS')" -%}

WITH as_of_date AS (
    {{ dbt_utils.date_spine(datepart=datepart, 
                            start_date=start_date,
                            end_date=end_date) }}
)

SELECT DATE_{{datepart}} as AS_OF_DATE FROM as_of_date