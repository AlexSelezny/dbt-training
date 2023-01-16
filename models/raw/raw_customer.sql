{{
    config(
        materialized='table'
    )
}}

Select
    *
        from RAW.GLOBALMART.CUSTOMER
        --from {{ source('globalmart', 'customer') }}