SELECT *
FROM menu_items 
WHERE menu_items_id NOT IN(SELECT menu_items_id FROM orders__menu_items);

select * from menu_items mi 
join orders__menu_items omi
on mi.menu_items_id=omi.menu_items_id;

select * from menu_items;
