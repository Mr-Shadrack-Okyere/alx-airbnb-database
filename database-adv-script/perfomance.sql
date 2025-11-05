-- initial query with WHERE and AND
SELECT
  b.id AS booking_id,
  u.name AS user_name,
  p.title AS property_title,
  pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.amount > 0;

-- analyze performance of initial query
EXPLAIN ANALYZE
SELECT
  b.id AS booking_id,
  u.name AS user_name,
  p.title AS property_title,
  pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.amount > 0;

-- optimized / refactored query
EXPLAIN ANALYZE
SELECT
  b.id,
  b.user_id,
  b.property_id,
  pay.amount
FROM bookings b
JOIN payments pay ON b.id = pay.booking_id
WHERE pay.amount > 0;
