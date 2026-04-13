SELECT *
FROM customers
WHERE customers_id IN (
    SELECT customers_id
    FROM orders
    WHERE date_ = (
        SELECT MAX(date_)
        FROM orders
    )
);