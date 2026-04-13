select c.name_,count(o.orders_id) as total_orders
from   orders o
join customers c
on c.customers_id=o.customers_id
group by c.name_
order by total_orders DESC  ;  

