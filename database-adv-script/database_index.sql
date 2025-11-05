-- Create indexes
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_properties_id ON properties(id);

-- Measure performance before index
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;

-- Measure performance after index
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;
