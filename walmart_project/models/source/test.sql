{# SELECT * FROM {{ source('walmart_databricks', 'orders') }} #}

select * FROM walmart.bronze.orders LIMIT 500
