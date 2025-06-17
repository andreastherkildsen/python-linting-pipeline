SELECT * 
FROM customers 
WHERE LOWER(first_name) LIKE '%j%' 
   OR LOWER(last_name) LIKE '%s%' 
   OR CAST(phone_number AS TEXT) LIKE '%123%'
ORDER BY RAND()
LIMIT 1000000;
