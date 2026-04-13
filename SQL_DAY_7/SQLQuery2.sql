select c.name_ ,count(o.orders_id) as total_orders
from  orders o
join customers c
on o.customers_id=c.customers_id
group by c.name_
having count(o.orders_id) >3;


