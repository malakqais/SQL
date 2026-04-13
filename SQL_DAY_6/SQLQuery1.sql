SELECT A.orders_id,SUM(mi.price * A.quantity) AS TOT
FROM orders__menu_items A
JOIN menu_items mi 
ON mi.menu_items_id = A.menu_items_id
GROUP BY A.orders_id
HAVING SUM(mi.price * A.quantity) > (
    SELECT AVG(TOT)
    FROM (
        SELECT SUM(mi.price * A.quantity) AS TOT
        FROM orders__menu_items A
        JOIN menu_items mi 
        ON mi.menu_items_id = A.menu_items_id
        GROUP BY A.orders_id
    ) AS t
);



