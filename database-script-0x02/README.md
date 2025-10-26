# Airbnb Database Seeding (DML)

This folder contains SQL scripts to populate the Airbnb-like database with sample data.

## Files
- `seed.sql`: Inserts initial sample data into the database tables.

## Instructions
1. Make sure the database `airbnb_db` and all tables from `schema.sql` are already created.
2. Run the following command in your SQL environment:
   ```sql
   SOURCE seed.sql;
SELECT * FROM users;
SELECT * FROM properties;
SELECT * FROM bookings;
SELECT * FROM payments;
SELECT * FROM reviews;
