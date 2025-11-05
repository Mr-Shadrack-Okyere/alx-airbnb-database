# Index Performance Measurement

Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).

Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql

Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.

---

## High-Usage Columns Identified
Based on query patterns, these columns are used frequently:
- `users.id`
- `bookings.user_id`
- `properties.id`

These columns are involved in joins and WHERE clauses, so indexing them improves performance.

---

## Indexes Created
We created the indexes inside **database_index.sql**.

Indexes created:
- `idx_users_id`
- `idx_bookings_user_id`
- `idx_properties_id`

---

## Performance Measurement
We measured performance before and after creating indexes using `EXPLAIN` on a sample query.

After applying the indexes, the query execution plan shows that the database uses the index to find rows faster.

This confirms performance improvement.
