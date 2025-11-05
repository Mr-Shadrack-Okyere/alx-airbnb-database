-- Task 1 - Subqueries

-- 1) Properties where average rating is greater than 4.0
SELECT
    p.id,
    p.name
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;


-- 2) Correlated Subquery - Users with more than 3 bookings
SELECT
    u.id,
    u.first_name,
    u.last_name,
    u.email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
