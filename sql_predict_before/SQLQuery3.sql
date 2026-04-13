insert into menu_items(menu_items_id,name_,price,restaurants_id)
values (6,'wings',4,1);

select mi.name_
from menu_items mi 
left join orders o 
on o.orders_id=mi.menu_items_id
where o.orders_id is null;



select mi.name_, o.orders_id
from menu_items mi 
full join orders o 
on o.orders_id=mi.menu_items_id;
