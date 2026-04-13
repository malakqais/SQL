SELECT *
FROM menu_items
WHERE price = (
    SELECT MAX(price)
    FROM menu_items
);