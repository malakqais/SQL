SELECT c.name_, SUM(mi.price * omi.quantity) as total_spent
FROM customers c
join orders o on c.customers_id = o.customers_id
join orders__menu_items omi on o.orders_id = omi.orders_id
join menu_items mi on mi.menu_items_id = omi.menu_items_id
GROUP BY c.name_
HAVING SUM(mi.price * omi.quantity) > 50;
