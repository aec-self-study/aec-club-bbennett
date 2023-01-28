/* 
Quick and very dirty SQL query to get customers, their first order date, and the 
number of orders they have placed total 
*/
select 
    
    customers.id,

    customers.name,

    min(orders.created_at) as first_order_date,

    count(*) as total_orders 


from `analytics-engineers-club.coffee_shop.customers` customers  

left join `analytics-engineers-club.coffee_shop.orders` orders 
    on customers.id = orders.customer_id     

group by 1, 2

order by first_order_date limit 5
