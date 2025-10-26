-- seed.sql
-- Populating the Airbnb Database with Sample Data
-- Author: <your name>
-- Date: 2025-10-26

USE airbnb_db;

-- ======================
-- USERS
-- ======================
INSERT INTO users (first_name, last_name, email, phone, role)
VALUES
('John', 'Doe', 'john@example.com', '555-1111', 'host'),
('Alice', 'Smith', 'alice@example.com', '555-2222', 'guest'),
('David', 'Brown', 'david@example.com', '555-3333', 'guest'),
('Emma', 'Wilson', 'emma@example.com', '555-4444', 'host'),
('Grace', 'Johnson', 'grace@example.com', '555-5555', 'guest');

-- ======================
-- PROPERTIES
-- ======================
INSERT INTO properties (host_id, title, description, city, price_per_night)
VALUES
(1, 'Cozy Beach House', 'Beautiful home by the sea with 3 bedrooms.', 'Miami', 150.00),
(4, 'Urban Apartment', 'Modern apartment in the city center.', 'New York', 200.00);

-- ======================
-- BOOKINGS
-- ======================
INSERT INTO bookings (guest_id, property_id, check_in_date, check_out_date, total_amount, status)
VALUES
(2, 1, '2025-11-10', '2025-11-15', 750.00, 'confirmed'),
(3, 1, '2025-12-01', '2025-12-05', 600.00, 'pending'),
(5, 2, '2025-11-20', '2025-11-25', 1000.00, 'confirmed');

-- ======================
-- PAYMENTS
-- ======================
INSERT INTO payments (booking_id, amount, payment_date, status)
VALUES
(1, 750.00, '2025-11-01', 'completed'),
(2, 600.00, '2025-11-20', 'failed'),
(3, 1000.00, '2025-11-10', 'completed');

-- ======================
-- REVIEWS
-- ======================
INSERT INTO reviews (booking_id, reviewer_id, rating, comment)
VALUES
(1, 2, 5, 'Amazing stay! The house was clean and near the beach.'),
(3, 5, 4, 'Great location and host, but noisy neighborhood.');
