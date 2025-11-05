SELECT users.id, users.name, COUNT(bookings.id) AS total_bookings
FROM users
JOIN bookings ON bookings.user_id = users.id
GROUP BY users.id, users.name;

SELECT id, name,
       RANK() OVER(ORDER BY total_bookings DESC) AS property_rank
FROM (
    SELECT properties.id, properties.name, COUNT(bookings.id) AS total_bookings
    FROM properties
    LEFT JOIN bookings ON bookings.property_id = properties.id
    GROUP BY properties.id, properties.name
) AS t;
