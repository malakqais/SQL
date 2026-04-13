select mi.name_,sum(omi.quantity) AS  total_quantity_sold
from menu_items mi 
join orders__menu_items omi 
on omi.menu_items_id=mi.menu_items_id
GROUP BY mi.name_
HAVING sum(omi.quantity)>10;


