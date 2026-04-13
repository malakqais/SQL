SELECT *
FROM restaurants
WHERE restaurants_id = ANY (
    SELECT restaurants_id
    FROM orders
);