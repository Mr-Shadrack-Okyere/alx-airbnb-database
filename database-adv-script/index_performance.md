# Index Performance Measurement

We created indexes to improve query performance on high-usage columns.

**Indexes created:**
- users.id
- bookings.user_id
- properties.id

Then we measured performance before and after applying the indexes using `EXPLAIN`.

The EXPLAIN output after indexing showed faster query execution.
