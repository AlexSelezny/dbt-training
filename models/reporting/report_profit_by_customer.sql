Select  
    customerid
    ,segment
    ,country
    ,Sum(orderid) as profit
        from {{ ref('stg_orders') }}
            group by 
                customerid
                ,segment
                ,country