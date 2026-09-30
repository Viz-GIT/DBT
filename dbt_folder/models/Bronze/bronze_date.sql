{{
  config(
    materialized = 'table',
    )
}}

SELECT * FROM {{source('source','dim_date')}}

