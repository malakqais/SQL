
INSERT INTO customers(customers_id,name_,email,phone)
VALUES(4,'Malak','malak11@gmail.com','0779860333');

-- رح يعرض كل العملاء اللي الهم طلبات
SELECT c.name_,o.orders_id
from customers c
join orders o
on o.orders_id=c.customers_id;

select * from customers;