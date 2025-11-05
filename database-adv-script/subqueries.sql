SELECT properties.id, properties.name
FROM properties
WHERE (
  SELECT AVG(reviews.rating)
  FROM reviews
  WHERE reviews.property_id = properties.id
) > 4.0;

SELECT users.id, users.name
FROM users
WHERE (
  SELECT COUNT(*)
  FROM bookings
  WHERE bookings.user_id = users.id
) > 3;
