With orders as
(
Select
    *
        from {{ ref('raw_orders') }}
)

Select 
    orderid
    ,Sum(ordersellingprice) as total_sp
        from orders
            group by orderid
                having total_sp<0