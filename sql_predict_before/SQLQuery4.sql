SELECT c.name_, o.orders_id
FROM customers c
full JOIN orders o
ON c.customers_id = o.orders_id;
