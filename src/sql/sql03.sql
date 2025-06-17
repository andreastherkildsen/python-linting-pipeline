SELECT DISTINCT id, first_name, last_name, phone_number,
       (SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.id) AS total_orders,
       (SELECT SUM(amount) FROM payments WHERE payments.customer_id = customers.id) AS total_spent
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
LEFT JOIN payments ON customers.id = payments.customer_id
WHERE first_name || ' ' || last_name LIKE '%john%'
   OR phone_number IN (SELECT phone_number FROM customers)
ORDER BY LENGTH(first_name) * RANDOM();
