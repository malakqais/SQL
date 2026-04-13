select c.name_,mio.orders_id,mi.name_,mio.quantity,(mi.Price * mio.quantity) AS TotalPrice
from customers c
full join orders__menu_items mio on c.customers_id=mio.orders_id
full join menu_items mi on mi.menu_items_id=mio.menu_items_id;
