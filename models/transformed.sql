{{ config(materialized='table') }}

SELECT 
    id,
    book_name,
    author,
    price,
    price * 0.9 AS discounted_price
FROM {{ source('hevo', 'raw_simulation') }}
