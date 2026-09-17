{{
    config(
        severity = 'warn'
    )
}}

SELECT 1
FROM {{ ref('obt_b') }} as obt
WHERE 
    obt.order_id is null
OR
    obt.product_id is null
OR
    obt.store_id is null
OR 
    obt.employee_id is null
OR
    obt.customer_id is null
OR
    obt.order_item_id is null