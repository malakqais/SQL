UPDATE orders
SET restaurants_id = 1
where orders_id=1;

UPDATE orders
SET restaurants_id = 2
where orders_id=2;

UPDATE orders
SET restaurants_id = 1
where orders_id=3;

select  c.name_ 
from customers c
join orders o on c.customers_id=o.customers_id
join restaurants r on o.restaurants_id = r.restaurants_id
GROUP BY c.name_
HAVING COUNT(DISTINCT r.restaurants_id) > 1;