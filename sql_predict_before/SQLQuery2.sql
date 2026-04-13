
--رح يعرض كل العملاء حتى لو ماعملوا طلبات
select c.name_
from customers c
left join orders o
on c.customers_id=o.orders_id;