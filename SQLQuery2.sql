CREATE TABLE customers(
customers_id int primary key,
name_ varchar(70) not null,
email varchar(70),
phone char(10));

CREATE TABLE orders(
orders_id int primary key,
date_ date,
customers_id int not null,
foreign key(customers_id) references customers(customers_id) );

CREATE TABLE restaurants(
restaurants_id int primary key,
name_ varchar(70) not null,
location varchar(70));

CREATE TABLE menu_items(
menu_items_id int primary key,
name_ varchar(70) not null,
price money,
restaurants_id int not null,
foreign key(restaurants_id) references restaurants(restaurants_id) );


CREATE TABLE orders__menu_items(
menu_items_id int not null,
orders_id int not null,
quantity int,
foreign key(menu_items_id) references menu_items(menu_items_id),
foreign key(orders_id) references orders(orders_id) );






insert into customers(customers_id,name_,email,phone)
values(1, 'Malak zoubi', 'malak@gmail.com', '0779860338'),
(2, 'Toqa khashashneh', 'toqa@gmail.com', '0789676209'),
(3, 'Ghosoun Tayseer', 'Ghosoun@gmail.com', '0788660401');

insert into orders(orders_id,date_,customers_id)
values(1, '2026-04-01', 1),
(2, '2026-04-02', 2),
(3, '2026-04-03', 1);

insert into restaurants(restaurants_id,name_,location)
values(1, 'Burger Time', 'Irbid'),
(2, 'Grill Mark', 'Amman');

insert into menu_items(menu_items_id,name_,price,restaurants_id)
values (1, 'Cheeseburger', 5.50, 1),
(2, 'Chicken Burger', 6.00, 1),
(3, 'Fries', 2.50, 1),
(4, 'Boneless', 8.00, 2),
(5, 'Mushroom Burger Meal', 9.50, 2);

insert into orders__menu_items(orders_id,menu_items_id,quantity)
values(1, 1, 2), 
(1, 3, 1), 
(2, 4, 1), 
(2, 5, 2), 
(3, 2, 1), 
(3, 3, 2);



--select 
--mi.name_ ,
--A.orders_id
--from menu_items mi
--join orders__menu_items A
--on mi.menu_items_id=A.menu_items_id ;

select 
om.orders_id,
STRING_AGG(i.name_, ', ') AS items,
SUM(i.price * om.quantity) as total_price
from orders__menu_items om
JOIN menu_items i 
on i.menu_items_id = om.menu_items_id
group by om.orders_id;



select 
    o.orders_id,
    o.date_,
    c.name_
from orders o
JOIN customers c
ON o.customers_id = c.customers_id;






