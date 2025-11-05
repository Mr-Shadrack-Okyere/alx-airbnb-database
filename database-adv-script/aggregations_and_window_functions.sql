WITH user_bookings AS (
    SELECT
        user_id,
        COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY user_id
),
property_rank AS (
    SELECT
        property_id,
        COUNT(*) AS total_bookings,
        ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
    FROM bookings
    GROUP BY property_id
)

SELECT * FROM user_bookings;
SELECT * FROM property_rank;
