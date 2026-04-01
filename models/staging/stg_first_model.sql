{{ config(materialized='view') }}

SELECT 
    *,
    CURRENT_TIMESTAMP() AS dbt_loaded_at
FROM {{ source('hevo', 'raw_simulation') }}   -- Change to your real table name